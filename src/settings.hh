#pragma once

constexpr bool FILL_SP_DEC           = false;
constexpr bool FILL_SP_INC           = false;
constexpr bool FILL_CALL             = false;
constexpr bool TAINT_STACK           = true;
constexpr bool TAINT_FLAGS           = false;
constexpr bool CHANGE_PRE_STATE      = true;
constexpr bool ABORT_ON_TAINT        = false;
constexpr bool CALL_TRACKER          = true;
constexpr bool JCC_TRACKER           = true;
constexpr bool LOCK_TRACKER          = true;
constexpr bool RDTSC_TRACKER         = true;
constexpr bool BLOCK_SHARED_MAPS     = true;
constexpr bool ASSERT_TAINT_ZERO     = false;
constexpr bool JCC_RECORD_REGS       = false;
constexpr bool CKSUM_REQUIRE_DATA_EQ = false;
