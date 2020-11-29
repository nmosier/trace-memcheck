switch (iform) {
case XED_IFORM_JNS_RELBRd:
  jcc = 0.643 >= thresh;
  fallthru = 0.786 >= thresh;
  break;
case XED_IFORM_JL_RELBRd:
  jcc = 0.750 >= thresh;
  fallthru = 0.500 >= thresh;
  break;
case XED_IFORM_JS_RELBRd:
  jcc = 0.148 >= thresh;
  fallthru = 0.951 >= thresh;
  break;
case XED_IFORM_JNZ_RELBRd:
  jcc = 0.417 >= thresh;
  fallthru = 0.776 >= thresh;
  break;
case XED_IFORM_JNLE_RELBRb:
  jcc = 0.848 >= thresh;
  fallthru = 0.727 >= thresh;
  break;
case XED_IFORM_JBE_RELBRd:
  jcc = 0.643 >= thresh;
  fallthru = 0.631 >= thresh;
  break;
case XED_IFORM_JNBE_RELBRb:
  jcc = 0.600 >= thresh;
  fallthru = 0.857 >= thresh;
  break;
case XED_IFORM_JNLE_RELBRd:
  jcc = 0.364 >= thresh;
  fallthru = 0.879 >= thresh;
  break;
case XED_IFORM_JZ_RELBRb:
  jcc = 0.660 >= thresh;
  fallthru = 0.584 >= thresh;
  break;
case XED_IFORM_JNBE_RELBRd:
  jcc = 0.420 >= thresh;
  fallthru = 0.882 >= thresh;
  break;
case XED_IFORM_JZ_RELBRd:
  jcc = 0.518 >= thresh;
  fallthru = 0.717 >= thresh;
  break;
case XED_IFORM_JNL_RELBRb:
  jcc = 0.500 >= thresh;
  fallthru = 0.500 >= thresh;
  break;
case XED_IFORM_JO_RELBRb:
  jcc = 0.000 >= thresh;
  fallthru = 1.000 >= thresh;
  break;
case XED_IFORM_JLE_RELBRb:
  jcc = 0.623 >= thresh;
  fallthru = 0.623 >= thresh;
  break;
case XED_IFORM_JNL_RELBRd:
  jcc = 0.500 >= thresh;
  fallthru = 0.667 >= thresh;
  break;
case XED_IFORM_JO_RELBRd:
  jcc = 0.000 >= thresh;
  fallthru = 1.000 >= thresh;
  break;
case XED_IFORM_JNB_RELBRb:
  jcc = 0.462 >= thresh;
  fallthru = 0.785 >= thresh;
  break;
case XED_IFORM_JLE_RELBRd:
  jcc = 0.650 >= thresh;
  fallthru = 0.650 >= thresh;
  break;
case XED_IFORM_JB_RELBRb:
  jcc = 0.661 >= thresh;
  fallthru = 0.677 >= thresh;
  break;
case XED_IFORM_JNS_RELBRb:
  jcc = 0.867 >= thresh;
  fallthru = 0.333 >= thresh;
  break;
case XED_IFORM_JNB_RELBRd:
  jcc = 0.571 >= thresh;
  fallthru = 0.776 >= thresh;
  break;
case XED_IFORM_JL_RELBRb:
  jcc = 0.600 >= thresh;
  fallthru = 1.000 >= thresh;
  break;
case XED_IFORM_JS_RELBRb:
  jcc = 0.333 >= thresh;
  fallthru = 0.795 >= thresh;
  break;
case XED_IFORM_JNZ_RELBRb:
  jcc = 0.532 >= thresh;
  fallthru = 0.741 >= thresh;
  break;
case XED_IFORM_JB_RELBRd:
  jcc = 0.659 >= thresh;
  fallthru = 0.682 >= thresh;
  break;
case XED_IFORM_JBE_RELBRb:
  jcc = 0.866 >= thresh;
  fallthru = 0.430 >= thresh;
  break;
default:
  jcc = false;
  fallthru = false;
  break;
}
