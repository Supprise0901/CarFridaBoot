package com.carfrida.boot

import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent

class BootReceiver : BroadcastReceiver() {
    override fun onReceive(context: Context, intent: Intent?) {
        if (intent?.action == Intent.ACTION_BOOT_COMPLETED) {
            try {
                Runtime.getRuntime().exec(arrayOf(
                    "su", "-c",
                    "/data/local/car_translate_hub/services/start.sh"
                ))
            } catch (e: Exception) {
                e.printStackTrace()
            }
        }
    }
}
