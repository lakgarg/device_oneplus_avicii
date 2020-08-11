package avicii

import (
    "android/soong/android"
)

func init() {
    android.RegisterModuleType("oneplus_avicii_fod_hal_binary", fodHalBinaryFactory)
}
