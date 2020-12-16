#pragma once

constexpr bool FILL_SP_DEC           = false;
constexpr bool FILL_SP_INC           = false;
constexpr bool FILL_CALL             = false;
constexpr bool TAINT_STACK           = false;
constexpr bool TAINT_FLAGS           = false;
constexpr bool CHANGE_PRE_STATE      = false;
constexpr bool ABORT_ON_TAINT        = true;
constexpr bool CALL_TRACKER          = true;
constexpr bool JCC_TRACKER           = true;
constexpr bool LOCK_TRACKER          = true;
constexpr bool RDTSC_TRACKER         = true;
constexpr bool BLOCK_SHARED_MAPS     = true;
constexpr bool ASSERT_TAINT_ZERO     = true;
constexpr bool JCC_RECORD_REGS       = true;
constexpr bool CKSUM_REQUIRE_DATA_EQ = true;
