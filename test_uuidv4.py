"""
Tests for the medcom-uuidv4 FHIRPath invariant regex.

Validates the strict UUID v4 pattern defined in
input/fsh/MedComCareCommunicationAttachmentID.fsh:

    urn:uuid:[0-9a-f]{8}-[0-9a-f]{4}-4[0-9a-f]{3}-[89ab][0-9a-f]{3}-[0-9a-f]{12}

The pattern enforces:
  - Literal prefix "urn:uuid:"
  - 8 hex digits
  - 4 hex digits
  - Version 4: "4" followed by 3 hex digits
  - Variant RFC 4122: one of [89ab] followed by 3 hex digits
  - 12 hex digits
"""

import re
import sys

UUID_V4_PATTERN = r"urn:uuid:[0-9a-f]{8}-[0-9a-f]{4}-4[0-9a-f]{3}-[89ab][0-9a-f]{3}-[0-9a-f]{12}"


def matches_uuid_v4(value: str) -> bool:
    """Return True if the value strictly matches the UUID v4 pattern."""
    return bool(re.fullmatch(UUID_V4_PATTERN, value))


def test_valid_uuid_v4():
    """Valid UUID v4 values must match."""
    valid = [
        "urn:uuid:f47ac10b-58cc-4372-a567-0e02b2c3d479",
        "urn:uuid:6ba7b810-9dad-4d11-81b4-01c04fd59556",
        "urn:uuid:00000000-0000-4000-8000-000000000000",
        "urn:uuid:ffffffff-ffff-4fff-bfff-ffffffffffff",
        "urn:uuid:a1a2a3a4-b1b2-4c3c-8d4e-5f6a7b8c9d0e",
    ]
    for value in valid:
        assert matches_uuid_v4(value), f"Expected match for {value}"


def test_wrong_version():
    """UUID with version other than 4 must not match."""
    invalid = [
        "urn:uuid:f47ac10b-58cc-1372-a567-0e02b2c3d479",  # version 1
        "urn:uuid:f47ac10b-58cc-2372-a567-0e02b2c3d479",  # version 2
        "urn:uuid:f47ac10b-58cc-3372-a567-0e02b2c3d479",  # version 3
        "urn:uuid:f47ac10b-58cc-5372-a567-0e02b2c3d479",  # version 5
    ]
    for value in invalid:
        assert not matches_uuid_v4(value), f"Expected no match for {value}"


def test_invalid_variant():
    """UUID with invalid variant bits must not match."""
    invalid = [
        "urn:uuid:f47ac10b-58cc-4372-0567-0e02b2c3d479",  # variant 0xxx
        "urn:uuid:f47ac10b-58cc-4372-4567-0e02b2c3d479",  # variant 4xxx
        "urn:uuid:f47ac10b-58cc-4372-c567-0e02b2c3d479",  # variant cxxx
        "urn:uuid:f47ac10b-58cc-4372-e567-0e02b2c3d479",  # variant exxx
    ]
    for value in invalid:
        assert not matches_uuid_v4(value), f"Expected no match for {value}"


def test_incomplete_identifier():
    """Incomplete identifiers must not match."""
    invalid = [
        "urn:uuid:f47ac10b-58cc-4372-a567",  # missing last group
        "urn:uuid:f47ac10b-58cc-4372",       # missing last two groups
        "urn:uuid:f47ac10b",                  # missing most groups
        "urn:uuid:",                          # empty
    ]
    for value in invalid:
        assert not matches_uuid_v4(value), f"Expected no match for {value}"


def test_non_hex_characters():
    """Non-hexadecimal characters must not match."""
    invalid = [
        "urn:uuid:f47ac10b-58cc-4372-a567-0e02b2c3d47g",  # 'g' not hex
        "urn:uuid:f47ac10b-58cc-4372-a567-0e02b2c3d47z",  # 'z' not hex
        "urn:uuid:f47ac10b-58cc-4372-a567-0e02b2c3d47!",  # '!' not hex
    ]
    for value in invalid:
        assert not matches_uuid_v4(value), f"Expected no match for {value}"


def test_wrong_segment_length():
    """Segments with incorrect length must not match."""
    invalid = [
        "urn:uuid:f47ac10b-58cc-4372-a567-0e02b2c3d47",  # last group 11 digits
        "urn:uuid:f47ac10b-58cc-4372-a567-0e02b2c3d4799",  # last group 13 digits
        "urn:uuid:f47ac10b-58cc-437-a567-0e02b2c3d479",   # fourth group 3 digits
        "urn:uuid:f47ac10b-58cc-4372-a56-0e02b2c3d479",   # fifth group 3 digits
    ]
    for value in invalid:
        assert not matches_uuid_v4(value), f"Expected no match for {value}"


def test_wrong_prefix():
    """Wrong prefix must not match."""
    invalid = [
        "uuid:f47ac10b-58cc-4372-a567-0e02b2c3d479",   # missing "urn:"
        "URN:UUID:f47ac10b-58cc-4372-a567-0e02b2c3d479",  # uppercase prefix
        "http://example.com/f47ac10b-58cc-4372-a567-0e02b2c3d479",  # wrong scheme
    ]
    for value in invalid:
        assert not matches_uuid_v4(value), f"Expected no match for {value}"


def test_case_sensitivity():
    """Uppercase hex digits must not match (pattern requires lowercase)."""
    invalid = [
        "urn:uuid:F47AC10B-58CC-4372-A567-0E02B2C3D479",  # all uppercase
        "urn:uuid:F47aC10b-58cC-4372-A567-0e02B2c3D479",  # mixed case
    ]
    for value in invalid:
        assert not matches_uuid_v4(value), f"Expected no match for {value}"


if __name__ == "__main__":
    tests = [
        test_valid_uuid_v4,
        test_wrong_version,
        test_invalid_variant,
        test_incomplete_identifier,
        test_non_hex_characters,
        test_wrong_segment_length,
        test_wrong_prefix,
        test_case_sensitivity,
    ]
    passed = 0
    failed = 0
    for test in tests:
        try:
            test()
            print(f"PASS: {test.__name__}")
            passed += 1
        except AssertionError as e:
            print(f"FAIL: {test.__name__}: {e}")
            failed += 1
    print(f"\n{passed} passed, {failed} failed out of {len(tests)} tests")
    sys.exit(0 if failed == 0 else 1)
