/*
 * arch/arm/mach-tegra/tegra_pmqos.h
 *
 * Copyright (C) 2012 Paul Reioux (aka Faux123)
 *
 * Author:
 *	faux123 <reioux@gmail.com>
 *
 * History:
 *      -original version (Paul Reioux)
 *      -cleaned since oc was reworked (Dennis Rassmann)
 *      -added comment for T3_VARIANT_BOOST (Dennis Rassmann)
 *      -adapted for grouper (Dennis Rassmann)
 *      -removed distinction between 0boost and xboost
 *      -minimized version
 *
 * This software is licensed under the terms of the GNU General Public
 * License version 2, as published by the Free Software Foundation, and
 * may be copied, distributed, and modified under those terms.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 */

/* in kHz */
#define BOOST_CPU_FREQ_MIN	1300000
#define CAP_CPU_FREQ_MAX	475000
#define T3_CPU_MIN_FREQ     51000
#define T3_LP_MAX_FREQ     	475000

extern unsigned int tegra_pmqos_boost_freq;
extern unsigned int tegra_pmqos_cap_freq;
extern unsigned int tegra_pmqos_cpu_freq_limits[];
extern unsigned int miss_freq_set;

// sound/soc/codecs/tlv320aic3008.c - sysfs to change available
#define AUD_CPU_FREQ_MIN 102000
// drivers/tty/serial/tegra_hsuart.c - not automatic must be enabled via sysfs
#define TI_A2DP_CPU_FREQ_MIN 102000

// tegra_hsuart_brcm.c - not automatic must be enabled via sysfs
// sysfs to change available
// We don't need this on endeavor
#define A2DP_CPU_FREQ_MIN 204000
#define OPP_CPU_FREQ_MIN 475000
