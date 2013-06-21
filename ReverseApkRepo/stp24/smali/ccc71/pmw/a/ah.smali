.class public final Lccc71/pmw/a/ah;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static A:Ljava/lang/String;

.field private static B:Ljava/lang/String;

.field private static C:Ljava/lang/String;

.field private static F:I

.field private static H:I

.field private static J:I

.field private static K:Z

.field private static L:I

.field private static M:Z

.field private static N:[[I

.field private static O:[Lccc71/pmw/a/ap;

.field private static P:[Ljava/lang/String;

.field private static Q:[Ljava/lang/String;

.field private static R:Ljava/lang/String;

.field private static S:Ljava/lang/String;

.field private static T:Ljava/lang/String;

.field private static U:Ljava/lang/String;

.field private static V:Ljava/lang/String;

.field private static W:Ljava/lang/String;

.field private static X:Ljava/lang/String;

.field private static Y:Ljava/lang/String;

.field private static Z:Ljava/lang/String;

.field public static a:I

.field private static aa:Ljava/lang/String;

.field private static ab:Ljava/lang/String;

.field private static ad:J

.field private static ae:I

.field private static af:J

.field private static ag:I

.field private static ah:J

.field private static ai:I

.field private static aj:[Ljava/lang/String;

.field private static ak:[I

.field private static al:[I

.field private static am:Ljava/lang/String;

.field private static an:Ljava/lang/String;

.field private static ao:Ljava/lang/String;

.field private static ap:Ljava/lang/String;

.field private static aq:Ljava/lang/String;

.field private static ar:Ljava/lang/String;

.field private static as:Ljava/lang/String;

.field private static synthetic at:[I

.field public static b:I

.field public static d:I

.field public static e:I

.field public static h:I

.field public static i:I

.field public static j:Z

.field public static k:Z

.field public static m:Ljava/lang/String;

.field public static n:Ljava/lang/String;

.field private static o:I

.field private static p:I

.field private static q:I

.field private static r:Ljava/lang/String;

.field private static s:Ljava/lang/String;

.field private static t:Ljava/lang/String;

.field private static u:Ljava/lang/String;

.field private static v:Ljava/lang/String;

.field private static w:Ljava/lang/String;

.field private static x:Ljava/lang/String;

.field private static y:Ljava/lang/String;

.field private static z:Ljava/lang/String;


# instance fields
.field private final D:I

.field private final E:I

.field private final G:[Ljava/lang/String;

.field private I:[Ljava/lang/String;

.field private ac:Landroid/content/Context;

.field public c:I

.field public f:Ljava/util/ArrayList;

.field public g:Ljava/util/ArrayList;

.field l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 29
    const/16 v0, 0x20

    sput v0, Lccc71/pmw/a/ah;->a:I

    .line 30
    const/16 v0, 0x3e8

    sput v0, Lccc71/pmw/a/ah;->o:I

    .line 32
    const/4 v0, -0x1

    sput v0, Lccc71/pmw/a/ah;->p:I

    .line 33
    const/4 v0, -0x2

    sput v0, Lccc71/pmw/a/ah;->q:I

    .line 35
    const-string v0, "/system/etc/init.d/99pmwcpu"

    sput-object v0, Lccc71/pmw/a/ah;->r:Ljava/lang/String;

    .line 36
    const-string v0, "/system/etc/init.d/98pmwcpu"

    sput-object v0, Lccc71/pmw/a/ah;->s:Ljava/lang/String;

    .line 37
    const-string v0, "resetVoltage"

    sput-object v0, Lccc71/pmw/a/ah;->t:Ljava/lang/String;

    .line 39
    const-string v0, "#!/system/bin/sh\n"

    sput-object v0, Lccc71/pmw/a/ah;->u:Ljava/lang/String;

    .line 41
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_available_governors"

    sput-object v0, Lccc71/pmw/a/ah;->v:Ljava/lang/String;

    .line 42
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_available_frequencies"

    sput-object v0, Lccc71/pmw/a/ah;->w:Ljava/lang/String;

    .line 43
    const-string v0, "/sdcard/pmw/scaling_available_frequencies"

    sput-object v0, Lccc71/pmw/a/ah;->x:Ljava/lang/String;

    .line 45
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/FakeShmoo_freq_voltage_table"

    sput-object v0, Lccc71/pmw/a/ah;->y:Ljava/lang/String;

    .line 46
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/frequency_voltage_table"

    sput-object v0, Lccc71/pmw/a/ah;->z:Ljava/lang/String;

    .line 48
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/stats/time_in_state"

    sput-object v0, Lccc71/pmw/a/ah;->A:Ljava/lang/String;

    .line 50
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    sput-object v0, Lccc71/pmw/a/ah;->B:Ljava/lang/String;

    .line 51
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_min_freq"

    sput-object v0, Lccc71/pmw/a/ah;->C:Ljava/lang/String;

    .line 55
    sget v0, Lccc71/pmw/a/ah;->p:I

    sput v0, Lccc71/pmw/a/ah;->F:I

    .line 68
    sget v0, Lccc71/pmw/a/ah;->p:I

    sput v0, Lccc71/pmw/a/ah;->H:I

    .line 73
    sget v0, Lccc71/pmw/a/ah;->p:I

    sput v0, Lccc71/pmw/a/ah;->J:I

    .line 75
    sput-boolean v3, Lccc71/pmw/a/ah;->K:Z

    .line 76
    sput v3, Lccc71/pmw/a/ah;->L:I

    .line 86
    sput-boolean v4, Lccc71/pmw/a/ah;->M:Z

    .line 87
    sput-object v5, Lccc71/pmw/a/ah;->N:[[I

    .line 88
    const/4 v0, 0x7

    new-array v0, v0, [Lccc71/pmw/a/ap;

    .line 89
    sget-object v1, Lccc71/pmw/a/ap;->a:Lccc71/pmw/a/ap;

    aput-object v1, v0, v3

    .line 90
    sget-object v1, Lccc71/pmw/a/ap;->a:Lccc71/pmw/a/ap;

    aput-object v1, v0, v4

    .line 91
    sget-object v1, Lccc71/pmw/a/ap;->a:Lccc71/pmw/a/ap;

    aput-object v1, v0, v6

    .line 92
    sget-object v1, Lccc71/pmw/a/ap;->e:Lccc71/pmw/a/ap;

    aput-object v1, v0, v7

    const/4 v1, 0x4

    .line 93
    sget-object v2, Lccc71/pmw/a/ap;->b:Lccc71/pmw/a/ap;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 94
    sget-object v2, Lccc71/pmw/a/ap;->c:Lccc71/pmw/a/ap;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 95
    sget-object v2, Lccc71/pmw/a/ap;->d:Lccc71/pmw/a/ap;

    aput-object v2, v0, v1

    .line 88
    sput-object v0, Lccc71/pmw/a/ah;->O:[Lccc71/pmw/a/ap;

    .line 97
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    .line 99
    const-string v1, "/sys/devices/system/cpu/cpufreq/frequency_voltage_table"

    aput-object v1, v0, v3

    .line 100
    const-string v1, "/sys/devices/system/cpu/cpu0/cpufreq/frequency_voltage_table"

    aput-object v1, v0, v4

    .line 101
    const-string v1, "/sys/devices/system/cpu/cpu0/cpufreq/FakeShmoo_freq_voltage_table"

    aput-object v1, v0, v6

    .line 103
    const-string v1, "/sys/devices/system/cpu/cpu0/cpufreq/vdd_levels_havs"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    .line 105
    const-string v2, "/sys/devices/system/cpu/cpu0/cpufreq/UV_mV_table"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 107
    const-string v2, "/sys/devices/system/cpu/cpufreq/vdd_table/vdd_levels"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 109
    const-string v2, "/sys/devices/system/cpu/cpu0/cpufreq/vdd_levels"

    aput-object v2, v0, v1

    .line 97
    sput-object v0, Lccc71/pmw/a/ah;->P:[Ljava/lang/String;

    .line 111
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    .line 113
    const-string v1, "/sys/devices/system/cpu/cpufreq/UV_mV_table"

    aput-object v1, v0, v3

    .line 114
    const-string v1, "/sys/devices/system/cpu/cpu0/cpufreq/UV_mV_table"

    aput-object v1, v0, v4

    .line 115
    const-string v1, "/sys/devices/system/cpu/cpu0/cpufreq/FakeShmoo_UV_mV_table"

    aput-object v1, v0, v6

    .line 117
    const-string v1, "/sys/devices/system/cpu/cpu0/cpufreq/vdd_levels_havs"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    .line 119
    const-string v2, "/sys/devices/system/cpu/cpu0/cpufreq/UV_mV_table"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 121
    const-string v2, "/sys/devices/system/cpu/cpufreq/vdd_table/vdd_levels"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 123
    const-string v2, "/sys/devices/system/cpu/cpu0/cpufreq/vdd_levels"

    aput-object v2, v0, v1

    .line 111
    sput-object v0, Lccc71/pmw/a/ah;->Q:[Ljava/lang/String;

    .line 126
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_governor"

    sput-object v0, Lccc71/pmw/a/ah;->R:Ljava/lang/String;

    .line 128
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq"

    sput-object v0, Lccc71/pmw/a/ah;->S:Ljava/lang/String;

    .line 129
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq"

    sput-object v0, Lccc71/pmw/a/ah;->T:Ljava/lang/String;

    .line 131
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/ondemand/sampling_rate"

    sput-object v0, Lccc71/pmw/a/ah;->U:Ljava/lang/String;

    .line 132
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/ondemand/up_threshold"

    sput-object v0, Lccc71/pmw/a/ah;->V:Ljava/lang/String;

    .line 133
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/ondemand/powersave_bias"

    sput-object v0, Lccc71/pmw/a/ah;->W:Ljava/lang/String;

    .line 135
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/min_sample_time"

    sput-object v0, Lccc71/pmw/a/ah;->X:Ljava/lang/String;

    .line 136
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/go_maxspeed_load"

    sput-object v0, Lccc71/pmw/a/ah;->Y:Ljava/lang/String;

    .line 138
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/conservative/sampling_rate"

    sput-object v0, Lccc71/pmw/a/ah;->Z:Ljava/lang/String;

    .line 139
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/conservative/up_threshold"

    sput-object v0, Lccc71/pmw/a/ah;->aa:Ljava/lang/String;

    .line 140
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/conservative/down_threshold"

    sput-object v0, Lccc71/pmw/a/ah;->ab:Ljava/lang/String;

    .line 144
    sput v3, Lccc71/pmw/a/ah;->b:I

    .line 150
    const-wide/16 v0, 0x0

    sput-wide v0, Lccc71/pmw/a/ah;->af:J

    .line 153
    const-wide/16 v0, 0x0

    sput-wide v0, Lccc71/pmw/a/ah;->ah:J

    .line 162
    sput-object v5, Lccc71/pmw/a/ah;->aj:[Ljava/lang/String;

    .line 163
    sput-object v5, Lccc71/pmw/a/ah;->ak:[I

    .line 165
    sput-object v5, Lccc71/pmw/a/ah;->al:[I

    .line 170
    sput-boolean v3, Lccc71/pmw/a/ah;->j:Z

    .line 171
    sput-boolean v3, Lccc71/pmw/a/ah;->k:Z

    .line 173
    const-string v0, "/system/etc/virtuous_oc"

    sput-object v0, Lccc71/pmw/a/ah;->am:Ljava/lang/String;

    .line 175
    const-string v0, "/system/etc/virtuous_oc/wake_max_freq"

    sput-object v0, Lccc71/pmw/a/ah;->an:Ljava/lang/String;

    .line 176
    const-string v0, "/system/etc/virtuous_oc/wake_min_freq"

    sput-object v0, Lccc71/pmw/a/ah;->ao:Ljava/lang/String;

    .line 177
    const-string v0, "/system/etc/virtuous_oc/wake_governor"

    sput-object v0, Lccc71/pmw/a/ah;->ap:Ljava/lang/String;

    .line 179
    const-string v0, "/system/etc/virtuous_oc/sleep_max_freq"

    sput-object v0, Lccc71/pmw/a/ah;->aq:Ljava/lang/String;

    .line 180
    const-string v0, "/system/etc/virtuous_oc/sleep_min_freq"

    sput-object v0, Lccc71/pmw/a/ah;->ar:Ljava/lang/String;

    .line 181
    const-string v0, "/system/etc/virtuous_oc/sleep_governor"

    sput-object v0, Lccc71/pmw/a/ah;->as:Ljava/lang/String;

    .line 2705
    const-string v0, "/data/local/cpu_failed"

    sput-object v0, Lccc71/pmw/a/ah;->m:Ljava/lang/String;

    .line 2706
    const-string v0, "/data/local/cpu_protection"

    sput-object v0, Lccc71/pmw/a/ah;->n:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput v4, p0, Lccc71/pmw/a/ah;->D:I

    .line 54
    iput v6, p0, Lccc71/pmw/a/ah;->E:I

    .line 56
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    .line 57
    const-string v1, "/sys/devices/system/cpu/cpu0/cpufreq/cpu_temp"

    aput-object v1, v0, v3

    .line 58
    const-string v1, "/sys/devices/system/cpu/cpu0/cpufreq/FakeShmoo_cpu_temp"

    aput-object v1, v0, v5

    .line 59
    const-string v1, "/sys/class/thermal/thermal_zone1/temp"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    .line 60
    const-string v2, "/sys/class/i2c-adapter/i2c-4/4-004c/temperature"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 61
    const-string v2, "/sys/devices/platform/omap/omap_temp_sensor.0/temperature"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 62
    const-string v2, "/sys/devices/platform/tegra_tmon/temp1_input"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 63
    const-string v2, "/sys/kernel/debug/tegra_thermal/temp_tj"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 64
    const-string v2, "/sys/devices/platform/s5p-tmu/temperature"

    aput-object v2, v0, v1

    .line 65
    const-string v1, "/sys/class/thermal/thermal_zone0/temp"

    aput-object v1, v0, v6

    iput-object v0, p0, Lccc71/pmw/a/ah;->G:[Ljava/lang/String;

    .line 69
    new-array v0, v4, [Ljava/lang/String;

    .line 70
    const-string v1, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq"

    aput-object v1, v0, v3

    .line 71
    const-string v1, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_cur_freq"

    aput-object v1, v0, v5

    iput-object v0, p0, Lccc71/pmw/a/ah;->I:[Ljava/lang/String;

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccc71/pmw/a/ah;->f:Ljava/util/ArrayList;

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccc71/pmw/a/ah;->g:Ljava/util/ArrayList;

    .line 2704
    iput-boolean v3, p0, Lccc71/pmw/a/ah;->l:Z

    .line 185
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput v5, p0, Lccc71/pmw/a/ah;->D:I

    .line 54
    iput v6, p0, Lccc71/pmw/a/ah;->E:I

    .line 56
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    .line 57
    const-string v1, "/sys/devices/system/cpu/cpu0/cpufreq/cpu_temp"

    aput-object v1, v0, v3

    .line 58
    const-string v1, "/sys/devices/system/cpu/cpu0/cpufreq/FakeShmoo_cpu_temp"

    aput-object v1, v0, v4

    .line 59
    const-string v1, "/sys/class/thermal/thermal_zone1/temp"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    .line 60
    const-string v2, "/sys/class/i2c-adapter/i2c-4/4-004c/temperature"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 61
    const-string v2, "/sys/devices/platform/omap/omap_temp_sensor.0/temperature"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 62
    const-string v2, "/sys/devices/platform/tegra_tmon/temp1_input"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 63
    const-string v2, "/sys/kernel/debug/tegra_thermal/temp_tj"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 64
    const-string v2, "/sys/devices/platform/s5p-tmu/temperature"

    aput-object v2, v0, v1

    .line 65
    const-string v1, "/sys/class/thermal/thermal_zone0/temp"

    aput-object v1, v0, v6

    iput-object v0, p0, Lccc71/pmw/a/ah;->G:[Ljava/lang/String;

    .line 69
    new-array v0, v5, [Ljava/lang/String;

    .line 70
    const-string v1, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq"

    aput-object v1, v0, v3

    .line 71
    const-string v1, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_cur_freq"

    aput-object v1, v0, v4

    iput-object v0, p0, Lccc71/pmw/a/ah;->I:[Ljava/lang/String;

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccc71/pmw/a/ah;->f:Ljava/util/ArrayList;

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccc71/pmw/a/ah;->g:Ljava/util/ArrayList;

    .line 2704
    iput-boolean v3, p0, Lccc71/pmw/a/ah;->l:Z

    .line 189
    if-eqz p1, :cond_0

    iput-object p1, p0, Lccc71/pmw/a/ah;->ac:Landroid/content/Context;

    new-instance v0, Ljava/io/File;

    sget-object v1, Lccc71/pmw/a/ah;->am:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    sput-boolean v4, Lccc71/pmw/a/ah;->k:Z

    sput-boolean v4, Lccc71/pmw/a/ah;->j:Z

    iget-object v0, p0, Lccc71/pmw/a/ah;->ac:Landroid/content/Context;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_settings;->P(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sput-boolean v3, Lccc71/pmw/a/ah;->j:Z

    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    invoke-static {}, Lccc71/pmw/a/ah;->a()I

    move-result v0

    iput v0, p0, Lccc71/pmw/a/ah;->c:I

    invoke-static {}, Lccc71/pmw/a/ah;->b()I

    .line 190
    :cond_1
    return-void

    .line 189
    :cond_2
    sput-boolean v3, Lccc71/pmw/a/ah;->k:Z

    sput-boolean v3, Lccc71/pmw/a/ah;->j:Z

    goto :goto_0
.end method

.method static synthetic C()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lccc71/pmw/a/ah;->r:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic D()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lccc71/pmw/a/ah;->s:Ljava/lang/String;

    return-object v0
.end method

.method private static E()Ljava/lang/String;
    .locals 6

    .prologue
    .line 2057
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2058
    sget-object v0, Lccc71/pmw/a/ah;->u:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2060
    const-string v1, "0"

    .line 2061
    const/4 v0, 0x1

    .line 2062
    :goto_0
    sget v3, Lccc71/pmw/a/ah;->a:I

    if-lt v0, v3, :cond_1

    .line 2078
    :cond_0
    const-string v0, "chmod 666 /sys/devices/system/cpu/online\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2079
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "echo "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " > /sys/devices/system/cpu/online\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2080
    const-string v0, "chmod 444 /sys/devices/system/cpu/online\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2081
    const-string v0, "chmod 666 /sys/devices/system/cpu/offline\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2082
    const-string v0, "echo \"\" > /sys/devices/system/cpu/offline\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2083
    const-string v0, "chmod 444 /sys/devices/system/cpu/offline\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2085
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2092
    :goto_1
    return-object v0

    .line 2064
    :cond_1
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "/sys/devices/system/cpu/cpu"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2065
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2067
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "chmod 666 /sys/devices/system/cpu/cpu"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/online\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2068
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "echo 1 > /sys/devices/system/cpu/cpu"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/online\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2069
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "chmod 444 /sys/devices/system/cpu/cpu"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/online\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2071
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "-"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2073
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 2087
    :catch_0
    move-exception v0

    .line 2089
    const-string v1, "process_monitor_widget"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to read source script: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2092
    const/4 v0, 0x0

    goto/16 :goto_1
.end method

.method private F()V
    .locals 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const v8, 0x186a0

    const/16 v6, 0x1f4

    const/4 v2, 0x0

    .line 2287
    new-instance v3, Ljava/io/File;

    sget-object v4, Lccc71/pmw/a/ah;->v:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2288
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2290
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 2291
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 2292
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 2294
    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lccc71/pmw/a/ah;->aj:[Ljava/lang/String;

    .line 2301
    :goto_0
    sput-object v1, Lccc71/pmw/a/ah;->al:[I

    .line 2302
    new-instance v3, Ljava/io/File;

    sget-object v4, Lccc71/pmw/a/ah;->w:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2303
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2309
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/16 v3, 0x64

    invoke-direct {v0, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 2310
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 2312
    invoke-static {v1}, Lccc71/pmw/a/ah;->g(Ljava/lang/String;)V

    .line 2313
    invoke-static {}, Lccc71/pmw/a/ah;->G()V

    .line 2317
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lccc71/pmw/a/ah;->c(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 2323
    :goto_1
    if-eqz v0, :cond_0

    .line 2327
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 2413
    :cond_0
    :goto_2
    sget-object v0, Lccc71/pmw/a/ah;->al:[I

    sput-object v0, Lccc71/pmw/a/ah;->ak:[I

    .line 2414
    :goto_3
    return-void

    .line 2298
    :cond_1
    new-array v3, v2, [Ljava/lang/String;

    sput-object v3, Lccc71/pmw/a/ah;->aj:[Ljava/lang/String;

    goto :goto_0

    .line 2337
    :cond_2
    invoke-direct {p0, v2}, Lccc71/pmw/a/ah;->c(Z)V

    .line 2339
    sget-object v3, Lccc71/pmw/a/ah;->al:[I

    if-nez v3, :cond_3

    .line 2341
    new-instance v3, Ljava/io/File;

    sget-object v4, Lccc71/pmw/a/ah;->A:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2342
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2346
    const/4 v4, 0x0

    :try_start_3
    invoke-static {v3, v4}, Lccc71/pmw/a/ah;->a(Ljava/io/File;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 2356
    :cond_3
    :goto_4
    new-instance v1, Ljava/io/File;

    sget-object v3, Lccc71/pmw/a/ah;->x:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2357
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2359
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 2360
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 2361
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 2363
    invoke-static {v1}, Lccc71/pmw/a/ah;->g(Ljava/lang/String;)V

    .line 2365
    invoke-static {}, Lccc71/pmw/a/ah;->G()V

    .line 2368
    :cond_4
    sget-object v1, Lccc71/pmw/a/ah;->al:[I

    if-nez v1, :cond_0

    .line 2372
    :try_start_4
    new-instance v1, Ljava/io/File;

    sget-object v3, Lccc71/pmw/a/ah;->B:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2373
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2375
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/16 v1, 0x1f4

    invoke-direct {v3, v4, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 2376
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 2377
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 2379
    new-instance v1, Ljava/io/File;

    sget-object v3, Lccc71/pmw/a/ah;->C:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2380
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2382
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/16 v1, 0x1f4

    invoke-direct {v3, v5, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 2383
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 2384
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 2386
    sub-int v1, v4, v5

    const v3, 0x186a0

    div-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v1, v8

    add-int/2addr v1, v5

    if-ne v4, v1, :cond_7

    move v1, v0

    .line 2387
    :goto_5
    sub-int v3, v4, v5

    const v6, 0x186a0

    div-int/2addr v3, v6

    add-int/lit8 v3, v3, 0x1

    if-eqz v1, :cond_5

    move v0, v2

    :cond_5
    add-int/2addr v0, v3

    new-array v3, v0, [I

    sput-object v3, Lccc71/pmw/a/ah;->al:[I

    .line 2388
    array-length v6, v3

    move v0, v2

    .line 2389
    :goto_6
    if-lt v0, v6, :cond_8

    .line 2393
    if-nez v1, :cond_6

    .line 2395
    array-length v0, v3

    add-int/lit8 v0, v0, -0x1

    aput v4, v3, v0

    .line 2398
    :cond_6
    sget-object v0, Lccc71/pmw/a/ah;->al:[I

    sput-object v0, Lccc71/pmw/a/ah;->ak:[I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_3

    .line 2406
    :catch_0
    move-exception v0

    const-string v0, "process_monitor_widget"

    const-string v1, "Could not determine frequency steps"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2409
    :goto_7
    new-array v0, v2, [I

    sput-object v0, Lccc71/pmw/a/ah;->al:[I

    goto/16 :goto_2

    .line 2348
    :catch_1
    move-exception v3

    .line 2350
    sput-object v1, Lccc71/pmw/a/ah;->al:[I

    .line 2351
    const-string v1, "process_monitor_widget"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to load frequency_voltage_table: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_7
    move v1, v2

    .line 2386
    goto :goto_5

    .line 2391
    :cond_8
    mul-int v7, v0, v8

    add-int/2addr v7, v5

    :try_start_5
    aput v7, v3, v0

    .line 2389
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 2402
    :cond_9
    const-string v0, "process_monitor_widget"

    const-string v1, "Calculated frequencies from min/max"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_7

    .line 2332
    :catch_2
    move-exception v0

    goto/16 :goto_2

    :catch_3
    move-exception v0

    move-object v0, v1

    goto/16 :goto_1

    :catch_4
    move-exception v1

    goto/16 :goto_1
.end method

.method private static G()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 2418
    sget-object v1, Lccc71/pmw/a/ah;->al:[I

    if-nez v1, :cond_1

    .line 2440
    :cond_0
    :goto_0
    return-void

    .line 2421
    :cond_1
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_min_freq"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2422
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2424
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/16 v1, 0x1f4

    invoke-direct {v2, v3, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 2425
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2426
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 2428
    if-eqz v1, :cond_0

    sget-object v2, Lccc71/pmw/a/ah;->al:[I

    aget v2, v2, v0

    if-eq v2, v1, :cond_0

    .line 2430
    sget-object v2, Lccc71/pmw/a/ah;->al:[I

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [I

    .line 2431
    sget-object v3, Lccc71/pmw/a/ah;->al:[I

    array-length v3, v3

    .line 2432
    aput v1, v2, v0

    .line 2433
    :goto_1
    if-lt v0, v3, :cond_2

    .line 2437
    sput-object v2, Lccc71/pmw/a/ah;->al:[I

    goto :goto_0

    .line 2435
    :cond_2
    add-int/lit8 v1, v0, 0x1

    sget-object v4, Lccc71/pmw/a/ah;->al:[I

    aget v4, v4, v0

    aput v4, v2, v1

    .line 2433
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private H()V
    .locals 2

    .prologue
    .line 2730
    sget-boolean v0, Lccc71/pmw/b/h;->c:Z

    if-nez v0, :cond_0

    .line 2754
    :goto_0
    return-void

    .line 2733
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 2735
    const-string v0, "process_monitor_widget"

    const-string v1, "Running on main thread, need new thread!..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2736
    new-instance v0, Lccc71/pmw/a/ao;

    invoke-direct {v0, p0}, Lccc71/pmw/a/ao;-><init>(Lccc71/pmw/a/ah;)V

    .line 2746
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 2747
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 2752
    :cond_1
    invoke-virtual {p0}, Lccc71/pmw/a/ah;->B()V

    goto :goto_0
.end method

.method private static synthetic I()[I
    .locals 3

    .prologue
    .line 27
    sget-object v0, Lccc71/pmw/a/ah;->at:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lccc71/pmw/a/ap;->values()[Lccc71/pmw/a/ap;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lccc71/pmw/a/ap;->e:Lccc71/pmw/a/ap;

    invoke-virtual {v1}, Lccc71/pmw/a/ap;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lccc71/pmw/a/ap;->b:Lccc71/pmw/a/ap;

    invoke-virtual {v1}, Lccc71/pmw/a/ap;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lccc71/pmw/a/ap;->a:Lccc71/pmw/a/ap;

    invoke-virtual {v1}, Lccc71/pmw/a/ap;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lccc71/pmw/a/ap;->d:Lccc71/pmw/a/ap;

    invoke-virtual {v1}, Lccc71/pmw/a/ap;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lccc71/pmw/a/ap;->c:Lccc71/pmw/a/ap;

    invoke-virtual {v1}, Lccc71/pmw/a/ap;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lccc71/pmw/a/ah;->at:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method public static a()I
    .locals 4

    .prologue
    .line 208
    const/4 v0, 0x1

    .line 209
    :goto_0
    sget v1, Lccc71/pmw/a/ah;->a:I

    if-lt v0, v1, :cond_1

    .line 219
    :cond_0
    return v0

    .line 211
    :cond_1
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/sys/devices/system/cpu/cpu"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/cpufreq"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lccc71/pmw/a/ah;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 142
    iget-object v0, p0, Lccc71/pmw/a/ah;->ac:Landroid/content/Context;

    return-object v0
.end method

.method private a(Ljava/lang/String;II[[ILjava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 1993
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1994
    sget-object v2, Lccc71/pmw/a/ah;->u:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1998
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "if [ -e "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lccc71/pmw/a/ah;->n:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ] ; then\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1999
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  echo failed > "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lccc71/pmw/a/ah;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2000
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  chmod 777 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lccc71/pmw/a/ah;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2001
    const-string v2, "  exit\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2002
    const-string v2, "fi\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2006
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "echo applied > "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lccc71/pmw/a/ah;->n:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2007
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "chmod 777 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lccc71/pmw/a/ah;->n:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2009
    sget-boolean v2, Lccc71/pmw/a/ah;->j:Z

    if-nez v2, :cond_0

    .line 2011
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "chmod 666 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lccc71/pmw/a/ah;->R:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2012
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "echo \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lccc71/pmw/a/ah;->R:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2013
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "chmod 666 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lccc71/pmw/a/ah;->S:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2014
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "echo \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lccc71/pmw/a/ah;->S:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2015
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "chmod 666 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lccc71/pmw/a/ah;->T:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2016
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "echo \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lccc71/pmw/a/ah;->T:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2018
    sget v2, Lccc71/pmw/a/ah;->b:I

    if-le v2, v0, :cond_0

    .line 2020
    :goto_0
    sget v2, Lccc71/pmw/a/ah;->b:I

    if-lt v0, v2, :cond_3

    .line 2032
    :cond_0
    if-eqz p5, :cond_1

    .line 2034
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2035
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2038
    :cond_1
    if-eqz p4, :cond_2

    .line 2040
    invoke-direct {p0, p4}, Lccc71/pmw/a/ah;->b([[I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2043
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2050
    :goto_1
    return-object v0

    .line 2022
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "chmod 666 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lccc71/pmw/a/ah;->R:Ljava/lang/String;

    const-string v4, "cpu0"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "cpu"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2023
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "echo \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lccc71/pmw/a/ah;->R:Ljava/lang/String;

    const-string v4, "cpu0"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "cpu"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2024
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "chmod 666 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lccc71/pmw/a/ah;->S:Ljava/lang/String;

    const-string v4, "cpu0"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "cpu"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2025
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "echo \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lccc71/pmw/a/ah;->S:Ljava/lang/String;

    const-string v4, "cpu0"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "cpu"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2026
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "chmod 666 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lccc71/pmw/a/ah;->T:Ljava/lang/String;

    const-string v4, "cpu0"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "cpu"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2027
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "echo \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lccc71/pmw/a/ah;->T:Ljava/lang/String;

    const-string v4, "cpu0"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "cpu"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2020
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 2045
    :catch_0
    move-exception v0

    .line 2047
    const-string v1, "process_monitor_widget"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to read source script: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2050
    const/4 v0, 0x0

    goto/16 :goto_1
.end method

.method public static a(I)V
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 553
    new-instance v0, Lccc71/pmw/b/h;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "echo "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " > "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Lccc71/pmw/a/ah;->aq:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    move-object v4, v2

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lccc71/pmw/b/h;-><init>(Ljava/lang/String;Landroid/os/Handler;ZLjava/lang/Object;ZZ)V

    .line 554
    return-void
.end method

.method public static a(II)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 455
    new-instance v0, Lccc71/pmw/b/h;

    invoke-static {p0, p1}, Lccc71/pmw/a/ah;->b(II)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    move-object v4, v2

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lccc71/pmw/b/h;-><init>(Ljava/lang/String;Landroid/os/Handler;ZLjava/lang/Object;ZZ)V

    .line 456
    return-void
.end method

.method public static a(III)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 423
    new-instance v0, Lccc71/pmw/b/h;

    invoke-static {p0, p1, p2}, Lccc71/pmw/a/ah;->c(III)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    move-object v4, v2

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lccc71/pmw/b/h;-><init>(Ljava/lang/String;Landroid/os/Handler;ZLjava/lang/Object;ZZ)V

    .line 424
    return-void
.end method

.method static synthetic a(Lccc71/pmw/a/ah;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2655
    invoke-direct {p0, p1}, Lccc71/pmw/a/ah;->h(Ljava/lang/String;)V

    return-void
.end method

.method private static a(Ljava/io/File;I)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 2529
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/16 v1, 0x400

    invoke-direct {v3, v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 2531
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2532
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2535
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2555
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 2557
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2558
    :goto_1
    if-lt v2, v1, :cond_4

    .line 2562
    return-void

    .line 2537
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 2538
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 2540
    const-string v1, ":* +"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 2541
    array-length v0, v6

    if-lez v0, :cond_0

    .line 2543
    aget-object v0, v6, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move v1, v2

    .line 2546
    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_2

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v0, v7, :cond_3

    .line 2549
    :cond_2
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2551
    const/4 v0, 0x1

    aget-object v0, v6, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 2547
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 2560
    :cond_4
    sget-object v0, Lccc71/pmw/a/ah;->N:[[I

    aget-object v3, v0, v2

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v3, v4

    .line 2558
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private static a(Ljava/io/File;Z)V
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 2444
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/16 v1, 0x400

    invoke-direct {v4, v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 2446
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2447
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2448
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2451
    :cond_0
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 2499
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 2501
    if-eqz p1, :cond_1

    .line 2503
    sget v0, Lccc71/pmw/a/ah;->b:I

    if-le v0, v10, :cond_8

    .line 2504
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget v1, Lccc71/pmw/a/ah;->b:I

    add-int/lit8 v1, v1, 0x1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    sput-object v0, Lccc71/pmw/a/ah;->N:[[I

    .line 2508
    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v3

    .line 2509
    :goto_2
    if-lt v1, v2, :cond_9

    .line 2517
    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2518
    new-array v0, v1, [I

    sput-object v0, Lccc71/pmw/a/ah;->al:[I

    .line 2519
    :goto_3
    if-lt v3, v1, :cond_a

    .line 2524
    invoke-static {}, Lccc71/pmw/a/ah;->G()V

    .line 2525
    return-void

    .line 2453
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 2454
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 2456
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":*[- ]+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 2457
    array-length v0, v8

    if-lez v0, :cond_0

    .line 2459
    aget-object v0, v8, v3

    .line 2460
    const-string v1, "mhz"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    move v1, v0

    :goto_4
    move v2, v3

    .line 2463
    :goto_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v2, :cond_3

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v0, v1, :cond_6

    .line 2466
    :cond_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2468
    if-eqz p1, :cond_0

    .line 2470
    if-nez v2, :cond_4

    .line 2471
    sput-boolean v3, Lccc71/pmw/a/ah;->M:Z

    .line 2473
    :cond_4
    array-length v0, v8

    if-lt v0, v11, :cond_7

    .line 2475
    aget-object v0, v8, v10

    const-string v1, "mV"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 2479
    aget-object v0, v8, v9

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2487
    aget-object v0, v8, v10

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 2460
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v1, v0

    goto :goto_4

    .line 2464
    :cond_6
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_5

    .line 2492
    :cond_7
    aget-object v0, v8, v9

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2493
    aget-object v0, v8, v9

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 2506
    :cond_8
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    filled-new-array {v0, v11}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    sput-object v0, Lccc71/pmw/a/ah;->N:[[I

    goto/16 :goto_1

    .line 2511
    :cond_9
    sget-object v0, Lccc71/pmw/a/ah;->N:[[I

    aget-object v4, v0, v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v4, v3

    .line 2512
    sget-object v0, Lccc71/pmw/a/ah;->N:[[I

    aget-object v4, v0, v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v4, v9

    .line 2513
    sget-object v0, Lccc71/pmw/a/ah;->N:[[I

    aget-object v4, v0, v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v4, v10

    .line 2509
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_2

    .line 2521
    :cond_a
    sget-object v2, Lccc71/pmw/a/ah;->al:[I

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v2, v3

    .line 2519
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3
.end method

.method public static a(Ljava/lang/String;)V
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 407
    invoke-static {p0}, Lccc71/pmw/a/ah;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 408
    new-instance v0, Lccc71/pmw/b/h;

    const/4 v5, 0x0

    move-object v4, v2

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lccc71/pmw/b/h;-><init>(Ljava/lang/String;Landroid/os/Handler;ZLjava/lang/Object;ZZ)V

    .line 409
    return-void
.end method

.method public static b()I
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 224
    sget v0, Lccc71/pmw/a/ah;->b:I

    if-nez v0, :cond_0

    move v0, v1

    .line 227
    :goto_0
    sget v2, Lccc71/pmw/a/ah;->a:I

    if-lt v0, v2, :cond_1

    .line 237
    sput v1, Lccc71/pmw/a/ah;->b:I

    .line 240
    :cond_0
    sget v0, Lccc71/pmw/a/ah;->b:I

    :goto_1
    return v0

    .line 229
    :cond_1
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/sys/devices/system/cpu/cpu"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 232
    sput v0, Lccc71/pmw/a/ah;->b:I

    goto :goto_1

    .line 235
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static b(II)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 461
    if-eqz p0, :cond_0

    .line 462
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "echo "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lccc71/pmw/a/ah;->X:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    :cond_0
    if-eqz p1, :cond_1

    .line 464
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "echo "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lccc71/pmw/a/ah;->Y:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b([[I)Ljava/lang/String;
    .locals 11
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1199
    sget-object v2, Lccc71/pmw/a/ah;->N:[[I

    if-nez v2, :cond_0

    .line 1200
    invoke-direct {p0, v1}, Lccc71/pmw/a/ah;->c(Z)V

    .line 1202
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v2, "#!"

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1203
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1206
    :try_start_0
    array-length v5, p1

    .line 1208
    sget v2, Lccc71/pmw/a/ah;->J:I

    .line 1210
    sget-object v6, Lccc71/pmw/a/ah;->Q:[Ljava/lang/String;

    aget-object v6, v6, v2

    .line 1211
    invoke-static {}, Lccc71/pmw/a/ah;->I()[I

    move-result-object v7

    sget-object v8, Lccc71/pmw/a/ah;->O:[Lccc71/pmw/a/ap;

    aget-object v2, v8, v2

    invoke-virtual {v2}, Lccc71/pmw/a/ap;->ordinal()I

    move-result v2

    aget v2, v7, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v2, :pswitch_data_0

    .line 1392
    :cond_1
    :goto_0
    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1393
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1395
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1216
    :pswitch_0
    :try_start_1
    const-string v0, "echo \""

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 1217
    :goto_1
    sget v2, Lccc71/pmw/a/ah;->L:I

    if-lt v0, v2, :cond_4

    .line 1221
    sget-boolean v0, Lccc71/pmw/a/ah;->M:Z

    if-eqz v0, :cond_7

    move v0, v1

    .line 1223
    :goto_2
    if-lt v0, v5, :cond_5

    .line 1253
    :cond_2
    sget v0, Lccc71/pmw/a/ah;->L:I

    if-nez v0, :cond_3

    sget-boolean v0, Lccc71/pmw/a/ah;->K:Z

    if-eqz v0, :cond_3

    .line 1254
    const-string v0, "0 0 0 0 0 0"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1255
    :cond_3
    const-string v0, "\" > "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 1219
    :cond_4
    const-string v2, "0 "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1217
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1225
    :cond_5
    aget-object v2, p1, v0

    const/4 v7, 0x0

    aget v2, v2, v7

    if-eqz v2, :cond_6

    aget-object v2, p1, v0

    const/4 v7, 0x1

    aget v2, v2, v7

    if-eqz v2, :cond_6

    .line 1227
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v7, p1, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1228
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v7, Lccc71/pmw/a/ah;->N:[[I

    aget-object v7, v7, v0

    const/4 v8, 0x2

    aget v7, v7, v8

    aget-object v8, p1, v0

    const/4 v9, 0x1

    aget v8, v8, v9

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1223
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 1232
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lccc71/pmw/a/ah;->N:[[I

    aget-object v7, v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1233
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v7, Lccc71/pmw/a/ah;->N:[[I

    aget-object v7, v7, v0

    const/4 v8, 0x2

    aget v7, v7, v8

    sget-object v8, Lccc71/pmw/a/ah;->N:[[I

    aget-object v8, v8, v0

    const/4 v9, 0x1

    aget v8, v8, v9

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1239
    :cond_7
    add-int/lit8 v0, v5, -0x1

    :goto_4
    if-ltz v0, :cond_2

    .line 1241
    aget-object v2, p1, v0

    const/4 v5, 0x0

    aget v2, v2, v5

    if-eqz v2, :cond_8

    aget-object v2, p1, v0

    const/4 v5, 0x1

    aget v2, v2, v5

    if-eqz v2, :cond_8

    .line 1243
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, p1, v0

    const/4 v7, 0x1

    aget v5, v5, v7

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1244
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v5, Lccc71/pmw/a/ah;->N:[[I

    aget-object v5, v5, v0

    const/4 v7, 0x2

    aget v5, v5, v7

    aget-object v7, p1, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    sub-int/2addr v5, v7

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1239
    :goto_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 1248
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lccc71/pmw/a/ah;->N:[[I

    aget-object v5, v5, v0

    const/4 v7, 0x1

    aget v5, v5, v7

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1249
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v5, Lccc71/pmw/a/ah;->N:[[I

    aget-object v5, v5, v0

    const/4 v7, 0x2

    aget v5, v5, v7

    sget-object v7, Lccc71/pmw/a/ah;->N:[[I

    aget-object v7, v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    sub-int/2addr v5, v7

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 1261
    :pswitch_1
    const-string v0, "echo \""

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1262
    sget-boolean v0, Lccc71/pmw/a/ah;->M:Z

    if-eqz v0, :cond_c

    move v0, v1

    .line 1264
    :goto_6
    if-lt v0, v5, :cond_a

    .line 1294
    :cond_9
    const-string v0, "\" > "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1266
    :cond_a
    aget-object v2, p1, v0

    const/4 v7, 0x0

    aget v2, v2, v7

    if-eqz v2, :cond_b

    aget-object v2, p1, v0

    const/4 v7, 0x1

    aget v2, v2, v7

    if-eqz v2, :cond_b

    .line 1268
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v7, p1, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1269
    new-instance v2, Ljava/lang/StringBuilder;

    aget-object v7, p1, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1264
    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1273
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lccc71/pmw/a/ah;->N:[[I

    aget-object v7, v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1274
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v7, Lccc71/pmw/a/ah;->N:[[I

    aget-object v7, v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 1280
    :cond_c
    add-int/lit8 v0, v5, -0x1

    :goto_8
    if-ltz v0, :cond_9

    .line 1282
    aget-object v2, p1, v0

    const/4 v5, 0x0

    aget v2, v2, v5

    if-eqz v2, :cond_d

    aget-object v2, p1, v0

    const/4 v5, 0x1

    aget v2, v2, v5

    if-eqz v2, :cond_d

    .line 1284
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lccc71/pmw/a/ah;->N:[[I

    aget-object v5, v5, v0

    const/4 v7, 0x1

    aget v5, v5, v7

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1285
    new-instance v2, Ljava/lang/StringBuilder;

    aget-object v5, p1, v0

    const/4 v7, 0x1

    aget v5, v5, v7

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1280
    :goto_9
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1289
    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lccc71/pmw/a/ah;->N:[[I

    aget-object v5, v5, v0

    const/4 v7, 0x1

    aget v5, v5, v7

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1290
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v5, Lccc71/pmw/a/ah;->N:[[I

    aget-object v5, v5, v0

    const/4 v7, 0x1

    aget v5, v5, v7

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :pswitch_2
    move v0, v1

    .line 1300
    :goto_a
    if-ge v0, v5, :cond_1

    .line 1302
    aget-object v2, p1, v0

    const/4 v7, 0x0

    aget v2, v2, v7

    if-eqz v2, :cond_f

    aget-object v2, p1, v0

    const/4 v7, 0x1

    aget v2, v2, v7

    if-nez v2, :cond_e

    aget-object v2, p1, v0

    const/4 v7, 0x2

    aget v2, v2, v7

    if-eqz v2, :cond_f

    .line 1304
    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "echo \""

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v7, p1, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1306
    aget-object v2, p1, v0

    const/4 v7, 0x1

    aget v2, v2, v7

    if-eqz v2, :cond_10

    .line 1308
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v7, p1, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1309
    aget-object v2, p1, v0

    const/4 v7, 0x1

    aget v2, v2, v7

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1316
    :goto_b
    const-string v2, " "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1318
    aget-object v2, p1, v0

    const/4 v7, 0x2

    aget v2, v2, v7

    if-eqz v2, :cond_11

    .line 1320
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v7, p1, v0

    const/4 v8, 0x2

    aget v7, v7, v8

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1321
    aget-object v2, p1, v0

    const/4 v7, 0x2

    aget v2, v2, v7

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1328
    :goto_c
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "\" > "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "\n"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1300
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_a

    .line 1313
    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lccc71/pmw/a/ah;->N:[[I

    aget-object v7, v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1314
    sget-object v2, Lccc71/pmw/a/ah;->N:[[I

    aget-object v2, v2, v0

    const/4 v7, 0x1

    aget v2, v2, v7

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 1325
    :cond_11
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lccc71/pmw/a/ah;->N:[[I

    aget-object v7, v7, v0

    const/4 v8, 0x2

    aget v7, v7, v8

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1326
    sget-object v2, Lccc71/pmw/a/ah;->N:[[I

    aget-object v2, v2, v0

    const/4 v7, 0x2

    aget v2, v2, v7

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_c

    :pswitch_3
    move v0, v1

    .line 1335
    :goto_d
    if-ge v0, v5, :cond_1

    .line 1337
    aget-object v2, p1, v0

    const/4 v7, 0x0

    aget v2, v2, v7

    if-eqz v2, :cond_12

    aget-object v2, p1, v0

    const/4 v7, 0x1

    aget v2, v2, v7

    if-eqz v2, :cond_12

    .line 1339
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v7, p1, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1340
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "echo \""

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v7, p1, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v7, p1, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "\" > "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "\n"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1335
    :goto_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 1344
    :cond_12
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lccc71/pmw/a/ah;->N:[[I

    aget-object v7, v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1345
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "echo \""

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v7, p1, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v7, Lccc71/pmw/a/ah;->N:[[I

    aget-object v7, v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "\" > "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "\n"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    :pswitch_4
    move v2, v1

    .line 1352
    :goto_f
    if-lt v2, v5, :cond_13

    move v2, v0

    .line 1365
    :goto_10
    sget v0, Lccc71/pmw/a/ah;->b:I

    if-ge v2, v0, :cond_1

    .line 1367
    const-string v0, "cpu0"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "cpu"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 1369
    const-string v0, "/"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 1370
    :goto_11
    if-lt v0, v5, :cond_15

    .line 1365
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_10

    .line 1354
    :cond_13
    aget-object v7, p1, v2

    const/4 v8, 0x0

    aget v7, v7, v8

    if-eqz v7, :cond_14

    aget-object v7, p1, v2

    const/4 v8, 0x1

    aget v7, v7, v8

    if-eqz v7, :cond_14

    .line 1356
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v8, p1, v2

    const/4 v9, 0x1

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1357
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "echo \""

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v8, p1, v2

    const/4 v9, 0x0

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, p1, v2

    const/4 v9, 0x1

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\" > "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1352
    :goto_12
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_f

    .line 1361
    :cond_14
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lccc71/pmw/a/ah;->N:[[I

    aget-object v8, v8, v2

    const/4 v9, 0x1

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1362
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "echo \""

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v8, p1, v2

    const/4 v9, 0x0

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lccc71/pmw/a/ah;->N:[[I

    aget-object v8, v8, v2

    const/4 v9, 0x1

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\" > "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    .line 1372
    :cond_15
    aget-object v8, p1, v0

    const/4 v9, 0x0

    aget v8, v8, v9

    if-eqz v8, :cond_16

    aget-object v8, p1, v0

    add-int/lit8 v9, v2, 0x1

    aget v8, v8, v9

    if-eqz v8, :cond_16

    .line 1374
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v9, p1, v0

    add-int/lit8 v10, v2, 0x1

    aget v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1375
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "echo \""

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v9, p1, v0

    const/4 v10, 0x0

    aget v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, p1, v0

    add-int/lit8 v10, v2, 0x1

    aget v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\" > "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1370
    :goto_13
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_11

    .line 1379
    :cond_16
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Lccc71/pmw/a/ah;->N:[[I

    aget-object v9, v9, v0

    add-int/lit8 v10, v2, 0x1

    aget v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1380
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "echo \""

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v9, p1, v0

    const/4 v10, 0x0

    aget v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lccc71/pmw/a/ah;->N:[[I

    aget-object v9, v9, v0

    add-int/lit8 v10, v2, 0x1

    aget v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\" > "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_13

    .line 1211
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method public static b(I)V
    .locals 9
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 561
    sget-boolean v0, Lccc71/pmw/a/ah;->j:Z

    if-eqz v0, :cond_0

    .line 563
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 564
    const-string v0, "mount -o remount,rw /dev/block/mtdblock3 /system\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "echo "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " > "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lccc71/pmw/a/ah;->an:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    const-string v0, "mount -o remount,ro /dev/block/mtdblock3 /system\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    new-instance v0, Lccc71/pmw/b/h;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v4, v2

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lccc71/pmw/b/h;-><init>(Ljava/lang/String;Landroid/os/Handler;ZLjava/lang/Object;ZZ)V

    .line 592
    :goto_0
    return-void

    .line 573
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 575
    sget v0, Lccc71/pmw/a/ah;->b:I

    if-le v0, v3, :cond_2

    .line 577
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "chmod 666 "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lccc71/pmw/a/ah;->S:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "echo "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " > "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lccc71/pmw/a/ah;->S:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v3

    .line 579
    :goto_1
    sget v4, Lccc71/pmw/a/ah;->b:I

    if-lt v0, v4, :cond_1

    .line 585
    new-instance v0, Lccc71/pmw/b/h;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v4, v2

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lccc71/pmw/b/h;-><init>(Ljava/lang/String;Landroid/os/Handler;ZLjava/lang/Object;ZZ)V

    goto :goto_0

    .line 581
    :cond_1
    sget-object v4, Lccc71/pmw/a/ah;->S:Ljava/lang/String;

    const-string v6, "cpu0"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "cpu"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 582
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "chmod 666 "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "echo "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " > "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 589
    :cond_2
    new-instance v0, Lccc71/pmw/b/h;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "echo "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " > "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Lccc71/pmw/a/ah;->S:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v4, v2

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lccc71/pmw/b/h;-><init>(Ljava/lang/String;Landroid/os/Handler;ZLjava/lang/Object;ZZ)V

    goto/16 :goto_0
.end method

.method public static b(III)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 470
    new-instance v0, Lccc71/pmw/b/h;

    invoke-static {p0, p1, p2}, Lccc71/pmw/a/ah;->d(III)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    move-object v4, v2

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lccc71/pmw/b/h;-><init>(Ljava/lang/String;Landroid/os/Handler;ZLjava/lang/Object;ZZ)V

    .line 471
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 1108
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lccc71/pmw/a/ah;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1109
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1110
    return-void
.end method

.method static synthetic b(Lccc71/pmw/a/ah;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2707
    invoke-direct {p0, p1}, Lccc71/pmw/a/ah;->i(Ljava/lang/String;)V

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 413
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 414
    const-string v0, "mount -o remount,rw /dev/block/mtdblock3 /system\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "echo "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " > "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lccc71/pmw/a/ah;->as:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    const-string v0, "mount -o remount,ro /dev/block/mtdblock3 /system\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    new-instance v0, Lccc71/pmw/b/h;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    move-object v4, v2

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lccc71/pmw/b/h;-><init>(Ljava/lang/String;Landroid/os/Handler;ZLjava/lang/Object;ZZ)V

    .line 419
    return-void
.end method

.method private static c(III)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 428
    new-instance v0, Ljava/io/File;

    sget-object v1, Lccc71/pmw/a/ah;->U:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 429
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 432
    if-eqz p0, :cond_0

    .line 433
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "echo "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lccc71/pmw/a/ah;->U:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    :cond_0
    if-eqz p1, :cond_1

    .line 435
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "echo "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lccc71/pmw/a/ah;->V:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    :cond_1
    if-eqz p2, :cond_2

    .line 437
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "echo "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lccc71/pmw/a/ah;->W:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 449
    :goto_0
    return-object v0

    .line 442
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 443
    if-eqz p0, :cond_4

    .line 444
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "echo "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lccc71/pmw/a/ah;->U:Ljava/lang/String;

    const-string v3, "/cpu0"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    :cond_4
    if-eqz p1, :cond_5

    .line 446
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "echo "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lccc71/pmw/a/ah;->V:Ljava/lang/String;

    const-string v3, "/cpu0"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    :cond_5
    if-eqz p2, :cond_6

    .line 448
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "echo "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lccc71/pmw/a/ah;->W:Ljava/lang/String;

    const-string v3, "/cpu0"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static c(I)V
    .locals 9
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 645
    sget-boolean v0, Lccc71/pmw/a/ah;->j:Z

    if-eqz v0, :cond_0

    .line 647
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 648
    const-string v0, "mount -o remount,rw /dev/block/mtdblock3 /system\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "echo "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " > "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lccc71/pmw/a/ah;->ao:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "echo "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " > "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lccc71/pmw/a/ah;->ar:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    const-string v0, "mount -o remount,ro /dev/block/mtdblock3 /system\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    new-instance v0, Lccc71/pmw/b/h;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v4, v2

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lccc71/pmw/b/h;-><init>(Ljava/lang/String;Landroid/os/Handler;ZLjava/lang/Object;ZZ)V

    .line 677
    :goto_0
    return-void

    .line 658
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 660
    sget v0, Lccc71/pmw/a/ah;->b:I

    if-le v0, v3, :cond_2

    .line 662
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "chmod 666 "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lccc71/pmw/a/ah;->T:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "echo "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " > "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lccc71/pmw/a/ah;->T:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v3

    .line 664
    :goto_1
    sget v4, Lccc71/pmw/a/ah;->b:I

    if-lt v0, v4, :cond_1

    .line 670
    new-instance v0, Lccc71/pmw/b/h;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v4, v2

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lccc71/pmw/b/h;-><init>(Ljava/lang/String;Landroid/os/Handler;ZLjava/lang/Object;ZZ)V

    goto :goto_0

    .line 666
    :cond_1
    sget-object v4, Lccc71/pmw/a/ah;->T:Ljava/lang/String;

    const-string v6, "cpu0"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "cpu"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 667
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "chmod 666 "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "echo "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " > "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 674
    :cond_2
    new-instance v0, Lccc71/pmw/b/h;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "echo "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " > "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Lccc71/pmw/a/ah;->T:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v4, v2

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lccc71/pmw/b/h;-><init>(Ljava/lang/String;Landroid/os/Handler;ZLjava/lang/Object;ZZ)V

    goto/16 :goto_0
.end method

.method private c(Z)V
    .locals 13
    .parameter

    .prologue
    const/4 v12, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 2193
    sget v0, Lccc71/pmw/a/ah;->J:I

    sget v1, Lccc71/pmw/a/ah;->p:I

    if-eq v0, v1, :cond_0

    if-eqz p1, :cond_1

    .line 2195
    :cond_0
    sget v0, Lccc71/pmw/a/ah;->q:I

    sput v0, Lccc71/pmw/a/ah;->J:I

    .line 2196
    sget-object v0, Lccc71/pmw/a/ah;->P:[Ljava/lang/String;

    array-length v6, v0

    move v5, v3

    .line 2279
    :goto_0
    if-lt v5, v6, :cond_2

    .line 2283
    :cond_1
    :goto_1
    return-void

    .line 2199
    :cond_2
    new-instance v1, Ljava/io/File;

    sget-object v0, Lccc71/pmw/a/ah;->P:[Ljava/lang/String;

    aget-object v0, v0, v5

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2200
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2204
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lccc71/pmw/a/ah;->al:[I

    .line 2205
    const/4 v0, 0x1

    invoke-static {v1, v0}, Lccc71/pmw/a/ah;->a(Ljava/io/File;Z)V

    .line 2206
    sput v5, Lccc71/pmw/a/ah;->J:I

    .line 2209
    sget-object v0, Lccc71/pmw/a/ah;->O:[Lccc71/pmw/a/ap;

    sget v2, Lccc71/pmw/a/ah;->J:I

    aget-object v0, v0, v2

    sget-object v2, Lccc71/pmw/a/ap;->d:Lccc71/pmw/a/ap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-ne v0, v2, :cond_6

    move v0, v4

    move-object v2, v1

    .line 2211
    :goto_2
    :try_start_1
    sget v1, Lccc71/pmw/a/ah;->b:I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-lt v0, v1, :cond_5

    .line 2278
    :cond_3
    :goto_3
    sget-object v0, Lccc71/pmw/a/ah;->al:[I

    if-nez v0, :cond_1

    .line 2279
    :cond_4
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    .line 2213
    :cond_5
    :try_start_2
    new-instance v1, Ljava/io/File;

    sget-object v7, Lccc71/pmw/a/ah;->P:[Ljava/lang/String;

    aget-object v7, v7, v5

    const-string v8, "cpu0"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "cpu"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 2214
    :try_start_3
    invoke-static {v1, v0}, Lccc71/pmw/a/ah;->a(Ljava/io/File;I)V

    .line 2211
    add-int/lit8 v0, v0, 0x1

    move-object v2, v1

    goto :goto_2

    .line 2217
    :cond_6
    sget-object v0, Lccc71/pmw/a/ah;->O:[Lccc71/pmw/a/ap;

    sget v2, Lccc71/pmw/a/ah;->J:I

    aget-object v0, v0, v2

    sget-object v2, Lccc71/pmw/a/ap;->e:Lccc71/pmw/a/ap;

    if-ne v0, v2, :cond_7

    .line 2219
    sget-object v0, Lccc71/pmw/a/ah;->N:[[I

    array-length v0, v0

    if-eqz v0, :cond_3

    .line 2221
    sget-object v0, Lccc71/pmw/a/ah;->N:[[I

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/4 v2, 0x1

    aget v0, v0, v2

    sget-object v2, Lccc71/pmw/a/ah;->N:[[I

    const/4 v7, 0x0

    aget-object v2, v2, v7

    const/4 v7, 0x2

    aget v2, v2, v7

    if-le v0, v2, :cond_3

    .line 2223
    const-string v0, "process_monitor_widget"

    const-string v2, "HAVS: Reverting min/max"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2224
    sget-object v0, Lccc71/pmw/a/ah;->N:[[I

    array-length v2, v0

    move v0, v3

    .line 2225
    :goto_4
    if-ge v0, v2, :cond_3

    .line 2227
    sget-object v7, Lccc71/pmw/a/ah;->N:[[I

    aget-object v7, v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    .line 2228
    sget-object v8, Lccc71/pmw/a/ah;->N:[[I

    aget-object v8, v8, v0

    const/4 v9, 0x1

    sget-object v10, Lccc71/pmw/a/ah;->N:[[I

    aget-object v10, v10, v0

    const/4 v11, 0x2

    aget v10, v10, v11

    aput v10, v8, v9

    .line 2229
    sget-object v8, Lccc71/pmw/a/ah;->N:[[I

    aget-object v8, v8, v0

    const/4 v9, 0x2

    aput v7, v8, v9

    .line 2225
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2234
    :cond_7
    sget-object v0, Lccc71/pmw/a/ah;->O:[Lccc71/pmw/a/ap;

    sget v0, Lccc71/pmw/a/ah;->J:I

    sget-object v0, Lccc71/pmw/a/ap;->a:Lccc71/pmw/a/ap;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 2257
    :catch_0
    move-exception v0

    .line 2259
    :goto_5
    sput-object v12, Lccc71/pmw/a/ah;->al:[I

    .line 2261
    sget-boolean v2, Lccc71/pmw/b/h;->c:Z

    if-eqz v2, :cond_9

    .line 2263
    const-string v0, "process_monitor_widget"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Changing permissions on file "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lccc71/pmw/a/ah;->P:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2264
    sget-object v0, Lccc71/pmw/a/ah;->P:[Ljava/lang/String;

    aget-object v0, v0, v5

    sget-boolean v1, Lccc71/pmw/b/h;->c:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "chmod 666 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    if-ne v2, v3, :cond_8

    new-instance v2, Lccc71/pmw/a/an;

    invoke-direct {v2, p0, v1, v0}, Lccc71/pmw/a/an;-><init>(Lccc71/pmw/a/ah;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto/16 :goto_1

    :cond_8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lccc71/pmw/a/ah;->i(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2269
    :cond_9
    const-string v2, "process_monitor_widget"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Failed to read voltage table: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, ": "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 2272
    :catch_1
    move-exception v0

    .line 2274
    :goto_6
    sput-object v12, Lccc71/pmw/a/ah;->al:[I

    .line 2275
    const-string v2, "process_monitor_widget"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Failed to load voltage table from "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, ": "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 2272
    :catch_2
    move-exception v0

    move-object v1, v2

    goto :goto_6

    .line 2257
    :catch_3
    move-exception v0

    move-object v1, v2

    goto/16 :goto_5
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1114
    invoke-static {}, Lccc71/pmw/a/ah;->o()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1123
    :goto_0
    return v0

    .line 1117
    :cond_0
    new-instance v1, Lccc71/pmw/a/ah;

    invoke-direct {v1}, Lccc71/pmw/a/ah;-><init>()V

    invoke-direct {v1, v0}, Lccc71/pmw/a/ah;->c(Z)V

    .line 1119
    sget-object v0, Lccc71/pmw/a/ah;->O:[Lccc71/pmw/a/ap;

    sget v1, Lccc71/pmw/a/ah;->J:I

    aget-object v0, v0, v1

    sget-object v1, Lccc71/pmw/a/ap;->a:Lccc71/pmw/a/ap;

    if-ne v0, v1, :cond_1

    .line 1120
    const/4 v0, 0x1

    goto :goto_0

    .line 1122
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lccc71/pmw/a/ah;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1123
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    goto :goto_0
.end method

.method public static d()I
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 286
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 287
    sget-wide v3, Lccc71/pmw/a/ah;->ad:J

    sub-long v3, v0, v3

    .line 289
    sget v5, Lccc71/pmw/a/ah;->o:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 290
    sget v0, Lccc71/pmw/a/ah;->ae:I

    .line 330
    :goto_0
    return v0

    .line 291
    :cond_0
    sput-wide v0, Lccc71/pmw/a/ah;->ad:J

    .line 295
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    const-string v3, "/proc/stat"

    invoke-direct {v1, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x14

    invoke-direct {v0, v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 296
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 297
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 298
    const-string v0, " +"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 301
    array-length v4, v3

    .line 303
    const/4 v0, 0x1

    move v1, v2

    :goto_1
    if-lt v0, v4, :cond_1

    .line 308
    const/4 v0, 0x4

    aget-object v0, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 310
    const/4 v4, 0x5

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v0, v3

    .line 312
    sget v3, Lccc71/pmw/a/ah;->d:I

    sub-int v3, v1, v3

    .line 313
    sget v4, Lccc71/pmw/a/ah;->e:I

    sub-int v4, v0, v4

    .line 315
    sub-int v4, v3, v4

    int-to-float v4, v4

    const/high16 v5, 0x42c8

    mul-float/2addr v4, v5

    int-to-float v3, v3

    div-float v3, v4, v3

    float-to-int v3, v3

    sput v3, Lccc71/pmw/a/ah;->ae:I

    .line 316
    sput v1, Lccc71/pmw/a/ah;->d:I

    .line 317
    sput v0, Lccc71/pmw/a/ah;->e:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 330
    :goto_2
    sget v0, Lccc71/pmw/a/ah;->ae:I

    goto :goto_0

    .line 305
    :cond_1
    :try_start_1
    aget-object v5, v3, v0

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    add-int/2addr v1, v5

    .line 303
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 319
    :catch_0
    move-exception v0

    .line 321
    const-string v1, "process_monitor_widget"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to get cpu information:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    sput v2, Lccc71/pmw/a/ah;->ae:I

    goto :goto_2

    .line 324
    :catch_1
    move-exception v0

    .line 326
    const-string v1, "process_monitor_widget"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error getting cpu information:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    sput v2, Lccc71/pmw/a/ah;->ae:I

    goto :goto_2
.end method

.method private static d(III)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 475
    sget v1, Lccc71/pmw/a/ah;->b:I

    if-le v1, v0, :cond_7

    .line 477
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 478
    if-eqz p0, :cond_0

    .line 479
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "echo "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lccc71/pmw/a/ah;->Z:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    :cond_0
    if-eqz p1, :cond_1

    .line 481
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "echo "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lccc71/pmw/a/ah;->aa:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    :cond_1
    if-eqz p2, :cond_2

    .line 483
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "echo "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lccc71/pmw/a/ah;->ab:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    :cond_2
    :goto_0
    sget v2, Lccc71/pmw/a/ah;->b:I

    if-lt v0, v2, :cond_3

    .line 493
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 501
    :goto_1
    return-object v0

    .line 486
    :cond_3
    if-eqz p0, :cond_4

    .line 487
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "echo "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lccc71/pmw/a/ah;->Z:Ljava/lang/String;

    const-string v4, "cpu0"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "cpu"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    :cond_4
    if-eqz p1, :cond_5

    .line 489
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "echo "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lccc71/pmw/a/ah;->aa:Ljava/lang/String;

    const-string v4, "cpu0"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "cpu"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    :cond_5
    if-eqz p2, :cond_6

    .line 491
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "echo "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lccc71/pmw/a/ah;->ab:Ljava/lang/String;

    const-string v4, "cpu0"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "cpu"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 497
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 498
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "echo "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lccc71/pmw/a/ah;->Z:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "echo "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lccc71/pmw/a/ah;->aa:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "echo "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lccc71/pmw/a/ah;->ab:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method

.method private static e(Ljava/lang/String;)[[I
    .locals 9
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 917
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 918
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 922
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/16 v0, 0x200

    invoke-direct {v2, v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 923
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 924
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 926
    sget-object v2, Lccc71/pmw/a/ah;->N:[[I

    array-length v2, v2

    if-lez v2, :cond_1

    .line 927
    const-string v2, "process_monitor_widget"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Loading voltage table size "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lccc71/pmw/a/ah;->N:[[I

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " x "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lccc71/pmw/a/ah;->N:[[I

    const/4 v5, 0x0

    aget-object v4, v4, v5

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lccc71/pmw/a/ah;->J:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    :goto_0
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 932
    sget-object v0, Lccc71/pmw/a/ah;->N:[[I

    array-length v0, v0

    sget-object v3, Lccc71/pmw/a/ah;->N:[[I

    const/4 v4, 0x0

    aget-object v3, v3, v4

    array-length v3, v3

    filled-new-array {v0, v3}, [I

    move-result-object v0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    .line 933
    sget v3, Lccc71/pmw/a/ah;->J:I

    .line 934
    invoke-static {}, Lccc71/pmw/a/ah;->I()[I

    move-result-object v4

    sget-object v5, Lccc71/pmw/a/ah;->O:[Lccc71/pmw/a/ap;

    aget-object v3, v5, v3

    invoke-virtual {v3}, Lccc71/pmw/a/ap;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_0

    .line 1005
    const/16 v3, 0x20

    invoke-static {v2, v3}, Lccc71/utils/ag;->a(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v2

    .line 1006
    sget-boolean v3, Lccc71/pmw/a/ah;->M:Z

    if-eqz v3, :cond_a

    .line 1008
    :goto_1
    array-length v3, v2

    if-lt v1, v3, :cond_8

    .line 1033
    :cond_0
    :goto_2
    return-object v0

    .line 929
    :cond_1
    const-string v2, "process_monitor_widget"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Won\'t be able to load voltage table size "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lccc71/pmw/a/ah;->N:[[I

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lccc71/pmw/a/ah;->J:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1027
    :catch_0
    move-exception v0

    .line 1029
    const-string v1, "process_monitor_widget"

    const-string v2, "Failed loading voltage table"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1033
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 939
    :pswitch_0
    const/16 v3, 0x2f

    :try_start_1
    invoke-static {v2, v3}, Lccc71/utils/ag;->a(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v4

    .line 940
    sget-boolean v2, Lccc71/pmw/a/ah;->M:Z

    if-eqz v2, :cond_4

    move v3, v1

    .line 942
    :goto_3
    array-length v2, v4

    if-ge v3, v2, :cond_0

    .line 944
    aget-object v2, v0, v3

    const/4 v5, 0x0

    sget-object v6, Lccc71/pmw/a/ah;->N:[[I

    aget-object v6, v6, v3

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v2, v5

    .line 946
    aget-object v2, v4, v3

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x20

    invoke-static {v2, v5}, Lccc71/utils/ag;->a(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v5

    move v2, v1

    .line 947
    :goto_4
    array-length v6, v5

    if-lt v2, v6, :cond_3

    .line 942
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_3

    .line 949
    :cond_3
    aget-object v6, v0, v3

    add-int/lit8 v7, v2, 0x1

    aget-object v8, v5, v2

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v6, v7

    .line 947
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    move v3, v1

    .line 955
    :goto_5
    array-length v2, v4

    if-ge v3, v2, :cond_0

    .line 957
    aget-object v2, v0, v3

    const/4 v5, 0x0

    sget-object v6, Lccc71/pmw/a/ah;->N:[[I

    aget-object v6, v6, v3

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v2, v5

    .line 959
    aget-object v2, v4, v3

    const/16 v5, 0x20

    invoke-static {v2, v5}, Lccc71/utils/ag;->a(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v5

    move v2, v1

    .line 960
    :goto_6
    array-length v6, v5

    if-lt v2, v6, :cond_5

    .line 955
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_5

    .line 962
    :cond_5
    array-length v6, v4

    sub-int/2addr v6, v3

    add-int/lit8 v6, v6, -0x1

    aget-object v6, v0, v6

    add-int/lit8 v7, v2, 0x1

    aget-object v8, v5, v2

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v6, v7

    .line 960
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 970
    :pswitch_1
    const/16 v3, 0x20

    invoke-static {v2, v3}, Lccc71/utils/ag;->a(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v2

    .line 971
    sget-boolean v3, Lccc71/pmw/a/ah;->M:Z

    if-eqz v3, :cond_7

    .line 973
    :goto_7
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 975
    aget-object v3, v2, v1

    const/16 v4, 0x2f

    invoke-static {v3, v4}, Lccc71/utils/ag;->a(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v3

    .line 976
    aget-object v4, v0, v1

    const/4 v5, 0x0

    sget-object v6, Lccc71/pmw/a/ah;->N:[[I

    aget-object v6, v6, v1

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v4, v5

    .line 977
    aget-object v4, v0, v1

    const/4 v5, 0x1

    const/4 v6, 0x0

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v4, v5

    .line 978
    aget-object v4, v0, v1

    const/4 v5, 0x2

    const/4 v6, 0x1

    aget-object v3, v3, v6

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v4, v5

    .line 973
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 985
    :cond_6
    aget-object v3, v2, v1

    const/16 v4, 0x2f

    invoke-static {v3, v4}, Lccc71/utils/ag;->a(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v3

    .line 986
    aget-object v4, v0, v1

    const/4 v5, 0x0

    sget-object v6, Lccc71/pmw/a/ah;->N:[[I

    aget-object v6, v6, v1

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v4, v5

    .line 987
    array-length v4, v2

    sub-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v0, v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v4, v5

    .line 988
    array-length v4, v2

    sub-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v0, v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    aget-object v3, v3, v6

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v4, v5

    .line 983
    add-int/lit8 v1, v1, 0x1

    :cond_7
    array-length v3, v2

    if-lt v1, v3, :cond_6

    goto/16 :goto_2

    .line 994
    :pswitch_2
    const/16 v3, 0x20

    invoke-static {v2, v3}, Lccc71/utils/ag;->a(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v2

    .line 995
    const-string v3, "process_monitor_widget"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Loading table size "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    :goto_8
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 998
    aget-object v3, v0, v1

    const/4 v4, 0x0

    sget-object v5, Lccc71/pmw/a/ah;->N:[[I

    aget-object v5, v5, v1

    const/4 v6, 0x0

    aget v5, v5, v6

    aput v5, v3, v4

    .line 999
    aget-object v3, v0, v1

    const/4 v4, 0x1

    aget-object v5, v2, v1

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v3, v4

    .line 996
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1010
    :cond_8
    aget-object v3, v0, v1

    const/4 v4, 0x0

    sget-object v5, Lccc71/pmw/a/ah;->N:[[I

    aget-object v5, v5, v1

    const/4 v6, 0x0

    aget v5, v5, v6

    aput v5, v3, v4

    .line 1011
    aget-object v3, v0, v1

    const/4 v4, 0x1

    aget-object v5, v2, v1

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v3, v4

    .line 1008
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 1018
    :cond_9
    aget-object v3, v0, v1

    const/4 v4, 0x0

    sget-object v5, Lccc71/pmw/a/ah;->N:[[I

    aget-object v5, v5, v1

    const/4 v6, 0x0

    aget v5, v5, v6

    aput v5, v3, v4

    .line 1019
    array-length v3, v2

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v0, v3

    const/4 v4, 0x1

    aget-object v5, v2, v1

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v3, v4

    .line 1016
    add-int/lit8 v1, v1, 0x1

    :cond_a
    array-length v3, v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-lt v1, v3, :cond_9

    goto/16 :goto_2

    .line 934
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 1955
    sget-boolean v1, Lccc71/pmw/a/ah;->j:Z

    if-eqz v1, :cond_0

    .line 1957
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1958
    const-string v1, "mount -o remount,rw /dev/block/mtdblock3 /system\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1959
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "echo "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lccc71/pmw/a/ah;->ap:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1960
    const-string v1, "mount -o remount,ro /dev/block/mtdblock3 /system\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1962
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1985
    :goto_0
    return-object v0

    .line 1968
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1970
    sget v2, Lccc71/pmw/a/ah;->b:I

    if-le v2, v0, :cond_2

    .line 1972
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "chmod 666 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lccc71/pmw/a/ah;->R:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1973
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "echo "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lccc71/pmw/a/ah;->R:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1974
    :goto_1
    sget v2, Lccc71/pmw/a/ah;->b:I

    if-lt v0, v2, :cond_1

    .line 1985
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1976
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "chmod 666 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lccc71/pmw/a/ah;->R:Ljava/lang/String;

    const-string v4, "cpu0"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "cpu"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1977
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "echo "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lccc71/pmw/a/ah;->R:Ljava/lang/String;

    const-string v4, "cpu0"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "cpu"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1974
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1982
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "echo "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " > "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lccc71/pmw/a/ah;->R:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2
.end method

.method private static g(Ljava/lang/String;)V
    .locals 9
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 2115
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2116
    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2117
    array-length v0, v5

    new-array v6, v0, [I

    sput-object v6, Lccc71/pmw/a/ah;->al:[I

    .line 2118
    array-length v7, v6

    move v3, v2

    .line 2119
    :goto_0
    if-lt v3, v7, :cond_0

    .line 2130
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v2, v0, :cond_3

    .line 2134
    return-void

    .line 2121
    :cond_0
    aget-object v0, v5, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    move v1, v2

    .line 2124
    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v0, v8, :cond_2

    .line 2127
    :cond_1
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2119
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 2125
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 2132
    :cond_3
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v6, v2

    .line 2130
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static h(I)Ljava/util/ArrayList;
    .locals 10
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x2

    const/4 v5, 0x0

    .line 1612
    invoke-static {}, Lccc71/pmw/a/ah;->w()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1617
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1618
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    sget-object v4, Lccc71/pmw/a/ah;->A:Ljava/lang/String;

    const-string v6, "cpu0"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "cpu"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x100

    invoke-direct {v3, v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 1620
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1635
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    move-object v0, v1

    .line 1659
    :goto_1
    return-object v0

    .line 1622
    :cond_1
    const-string v4, " +"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1623
    array-length v4, v0

    if-ne v4, v9, :cond_0

    .line 1625
    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1626
    const/4 v4, 0x1

    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move v4, v5

    .line 1629
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v4, :cond_2

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v8, 0x0

    aget v0, v0, v8

    if-lt v0, v6, :cond_4

    .line 1632
    :cond_2
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v8, 0x0

    aput v6, v0, v8

    const/4 v6, 0x1

    aput v7, v0, v6

    invoke-virtual {v1, v4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1646
    :catch_0
    move-exception v0

    move-object v0, v3

    :goto_3
    if-eqz v0, :cond_3

    .line 1650
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_3
    :goto_4
    move-object v0, v2

    .line 1659
    goto :goto_1

    .line 1630
    :cond_4
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2

    .line 1645
    :catchall_0
    move-exception v0

    move-object v3, v2

    .line 1646
    :goto_5
    if-eqz v3, :cond_5

    .line 1650
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1655
    :cond_5
    :goto_6
    throw v0

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_6

    .line 1645
    :catchall_1
    move-exception v0

    goto :goto_5

    .line 1646
    :catch_3
    move-exception v0

    move-object v0, v2

    goto :goto_3
.end method

.method private h(Ljava/lang/String;)V
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 2657
    new-instance v0, Lccc71/pmw/b/h;

    const/4 v3, 0x1

    move-object v1, p1

    move-object v4, v2

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lccc71/pmw/b/h;-><init>(Ljava/lang/String;Landroid/os/Handler;ZLjava/lang/Object;ZZ)V

    .line 2663
    :try_start_0
    invoke-direct {p0}, Lccc71/pmw/a/ah;->F()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2671
    :goto_0
    return-void

    .line 2665
    :catch_0
    move-exception v0

    .line 2667
    new-array v1, v5, [Ljava/lang/String;

    sput-object v1, Lccc71/pmw/a/ah;->aj:[Ljava/lang/String;

    .line 2668
    new-array v1, v5, [I

    sput-object v1, Lccc71/pmw/a/ah;->ak:[I

    .line 2669
    const-string v1, "process_monitor_widget"

    const-string v2, "Cannot load CPU data and cannot change file permissions!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static i()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 599
    sget-boolean v0, Lccc71/pmw/a/ah;->j:Z

    if-eqz v0, :cond_0

    sget-object v0, Lccc71/pmw/a/ah;->ao:Ljava/lang/String;

    .line 603
    :goto_0
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x14

    invoke-direct {v2, v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3

    .line 604
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 605
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_7

    .line 608
    :try_start_2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_3

    move-result v0

    .line 637
    :goto_1
    return v0

    .line 599
    :cond_0
    sget-object v0, Lccc71/pmw/a/ah;->T:Ljava/lang/String;

    goto :goto_0

    .line 612
    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_2
    :try_start_3
    const-string v1, "process_monitor_widget"

    const-string v2, "Cannot find min frequency file"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 624
    if-eqz v0, :cond_1

    .line 628
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 637
    :cond_1
    :goto_3
    const/4 v0, 0x0

    goto :goto_1

    .line 616
    :catch_1
    move-exception v0

    :goto_4
    :try_start_5
    const-string v0, "process_monitor_widget"

    const-string v2, "Cannot load min frequency file"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 624
    if-eqz v1, :cond_1

    .line 628
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    .line 633
    :catch_2
    move-exception v0

    goto :goto_3

    .line 620
    :catch_3
    move-exception v0

    :goto_5
    :try_start_7
    const-string v0, "process_monitor_widget"

    const-string v2, "Cannot parse min frequency file"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 624
    if-eqz v1, :cond_1

    .line 628
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_3

    .line 633
    :catch_4
    move-exception v0

    goto :goto_3

    .line 623
    :catchall_0
    move-exception v0

    .line 624
    :goto_6
    if-eqz v1, :cond_2

    .line 628
    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 633
    :cond_2
    :goto_7
    throw v0

    :catch_5
    move-exception v0

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_7

    .line 623
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_6

    :catchall_2
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_6

    .line 620
    :catch_7
    move-exception v0

    move-object v1, v2

    goto :goto_5

    .line 616
    :catch_8
    move-exception v0

    move-object v1, v2

    goto :goto_4

    .line 612
    :catch_9
    move-exception v0

    move-object v0, v2

    goto :goto_2
.end method

.method private i(I)V
    .locals 6
    .parameter

    .prologue
    .line 2566
    sget-boolean v0, Lccc71/pmw/b/h;->c:Z

    if-nez v0, :cond_0

    .line 2653
    :goto_0
    return-void

    .line 2569
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2571
    if-nez p1, :cond_c

    .line 2573
    new-instance v1, Ljava/io/File;

    sget-object v2, Lccc71/pmw/a/ah;->v:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2574
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2575
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "chmod 666 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lccc71/pmw/a/ah;->v:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2576
    :cond_1
    new-instance v1, Ljava/io/File;

    sget-object v2, Lccc71/pmw/a/ah;->w:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2577
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2578
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "chmod 666 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lccc71/pmw/a/ah;->w:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2579
    :cond_2
    new-instance v1, Ljava/io/File;

    sget-object v2, Lccc71/pmw/a/ah;->y:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2580
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2581
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "chmod 666 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lccc71/pmw/a/ah;->y:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2582
    :cond_3
    new-instance v1, Ljava/io/File;

    sget-object v2, Lccc71/pmw/a/ah;->z:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2583
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2584
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "chmod 666 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lccc71/pmw/a/ah;->z:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2586
    :cond_4
    sget v1, Lccc71/pmw/a/ah;->H:I

    if-ltz v1, :cond_5

    .line 2587
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "chmod 666 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lccc71/pmw/a/ah;->I:[Ljava/lang/String;

    sget v3, Lccc71/pmw/a/ah;->H:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2589
    :cond_5
    new-instance v1, Ljava/io/File;

    sget-object v2, Lccc71/pmw/a/ah;->A:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2590
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2591
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "chmod 666 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lccc71/pmw/a/ah;->A:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2592
    :cond_6
    new-instance v1, Ljava/io/File;

    sget-object v2, Lccc71/pmw/a/ah;->B:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2593
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2594
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "chmod 666 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lccc71/pmw/a/ah;->B:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2595
    :cond_7
    new-instance v1, Ljava/io/File;

    sget-object v2, Lccc71/pmw/a/ah;->C:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2596
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2597
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "chmod 666 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lccc71/pmw/a/ah;->C:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2598
    :cond_8
    new-instance v1, Ljava/io/File;

    sget-object v2, Lccc71/pmw/a/ah;->R:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2599
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2600
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "chmod 666 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lccc71/pmw/a/ah;->R:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2601
    :cond_9
    new-instance v1, Ljava/io/File;

    sget-object v2, Lccc71/pmw/a/ah;->S:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2602
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2603
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "chmod 666 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lccc71/pmw/a/ah;->S:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2604
    :cond_a
    new-instance v1, Ljava/io/File;

    sget-object v2, Lccc71/pmw/a/ah;->T:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2605
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2606
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "chmod 666 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lccc71/pmw/a/ah;->T:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2633
    :cond_b
    :goto_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_13

    .line 2635
    new-instance v1, Lccc71/pmw/a/am;

    invoke-direct {v1, p0, v0}, Lccc71/pmw/a/am;-><init>(Lccc71/pmw/a/ah;Ljava/lang/StringBuilder;)V

    .line 2645
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setPriority(I)V

    .line 2646
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 2610
    :cond_c
    sget v1, Lccc71/pmw/a/ah;->H:I

    if-ltz v1, :cond_d

    .line 2611
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "chmod 666 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lccc71/pmw/a/ah;->I:[Ljava/lang/String;

    sget v3, Lccc71/pmw/a/ah;->H:I

    aget-object v2, v2, v3

    const-string v3, "cpu0"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "cpu"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2613
    :cond_d
    new-instance v1, Ljava/io/File;

    sget-object v2, Lccc71/pmw/a/ah;->A:Ljava/lang/String;

    const-string v3, "cpu0"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "cpu"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2614
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2615
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "chmod 666 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lccc71/pmw/a/ah;->A:Ljava/lang/String;

    const-string v3, "cpu0"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "cpu"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2616
    :cond_e
    new-instance v1, Ljava/io/File;

    sget-object v2, Lccc71/pmw/a/ah;->B:Ljava/lang/String;

    const-string v3, "cpu0"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "cpu"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2617
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2618
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "chmod 666 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lccc71/pmw/a/ah;->B:Ljava/lang/String;

    const-string v3, "cpu0"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "cpu"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2619
    :cond_f
    new-instance v1, Ljava/io/File;

    sget-object v2, Lccc71/pmw/a/ah;->C:Ljava/lang/String;

    const-string v3, "cpu0"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "cpu"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2620
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2621
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "chmod 666 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lccc71/pmw/a/ah;->C:Ljava/lang/String;

    const-string v3, "cpu0"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "cpu"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2622
    :cond_10
    new-instance v1, Ljava/io/File;

    sget-object v2, Lccc71/pmw/a/ah;->R:Ljava/lang/String;

    const-string v3, "cpu0"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "cpu"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2623
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2624
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "chmod 666 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lccc71/pmw/a/ah;->R:Ljava/lang/String;

    const-string v3, "cpu0"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "cpu"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2625
    :cond_11
    new-instance v1, Ljava/io/File;

    sget-object v2, Lccc71/pmw/a/ah;->S:Ljava/lang/String;

    const-string v3, "cpu0"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "cpu"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2626
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 2627
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "chmod 666 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lccc71/pmw/a/ah;->S:Ljava/lang/String;

    const-string v3, "cpu0"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "cpu"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2628
    :cond_12
    new-instance v1, Ljava/io/File;

    sget-object v2, Lccc71/pmw/a/ah;->T:Ljava/lang/String;

    const-string v3, "cpu0"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "cpu"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2629
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2630
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "chmod 666 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lccc71/pmw/a/ah;->T:Ljava/lang/String;

    const-string v3, "cpu0"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "cpu"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 2651
    :cond_13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lccc71/pmw/a/ah;->h(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private i(Ljava/lang/String;)V
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 2709
    iget-boolean v0, p0, Lccc71/pmw/a/ah;->l:Z

    if-eqz v0, :cond_0

    .line 2726
    :goto_0
    return-void

    .line 2712
    :cond_0
    new-instance v0, Lccc71/pmw/b/h;

    move-object v1, p1

    move-object v4, v2

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lccc71/pmw/b/h;-><init>(Ljava/lang/String;Landroid/os/Handler;ZLjava/lang/Object;ZZ)V

    .line 2718
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lccc71/pmw/a/ah;->l:Z

    .line 2719
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lccc71/pmw/a/ah;->c(Z)V

    .line 2720
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccc71/pmw/a/ah;->l:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2724
    :catch_0
    move-exception v0

    const-string v0, "process_monitor_widget"

    const-string v1, "Cannot load voltage data and cannot change file permissions!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static j(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 905
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lccc71/utils/android/y;->a()Lccc71/utils/android/y;

    move-result-object v1

    invoke-virtual {v1, p0}, Lccc71/utils/android/y;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lccc71/pmw/a/ah;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 906
    const-string v1, "process_monitor_widget"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Reset file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    return-object v0
.end method

.method public static j()Z
    .locals 2

    .prologue
    .line 741
    sget v0, Lccc71/pmw/a/ah;->F:I

    sget v1, Lccc71/pmw/a/ah;->p:I

    if-ne v0, v1, :cond_0

    .line 743
    new-instance v0, Lccc71/pmw/a/ah;

    invoke-direct {v0}, Lccc71/pmw/a/ah;-><init>()V

    invoke-virtual {v0}, Lccc71/pmw/a/ah;->m()I

    .line 746
    :cond_0
    sget v0, Lccc71/pmw/a/ah;->F:I

    sget v1, Lccc71/pmw/a/ah;->q:I

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static n()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1095
    invoke-static {}, Lccc71/pmw/a/ah;->o()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1103
    :cond_0
    :goto_0
    return v0

    .line 1098
    :cond_1
    new-instance v1, Lccc71/pmw/a/ah;

    invoke-direct {v1}, Lccc71/pmw/a/ah;-><init>()V

    invoke-direct {v1, v0}, Lccc71/pmw/a/ah;->c(Z)V

    .line 1100
    sget-object v1, Lccc71/pmw/a/ah;->O:[Lccc71/pmw/a/ap;

    sget v2, Lccc71/pmw/a/ah;->J:I

    aget-object v1, v1, v2

    sget-object v2, Lccc71/pmw/a/ap;->a:Lccc71/pmw/a/ap;

    if-ne v1, v2, :cond_0

    .line 1103
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static o()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1128
    invoke-static {}, Lccc71/pmw/a/ah;->t()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1133
    :cond_0
    :goto_0
    return v0

    .line 1131
    :cond_1
    new-instance v1, Lccc71/pmw/a/ah;

    invoke-direct {v1}, Lccc71/pmw/a/ah;-><init>()V

    invoke-direct {v1, v0}, Lccc71/pmw/a/ah;->c(Z)V

    .line 1133
    sget v1, Lccc71/pmw/a/ah;->J:I

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static q()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1148
    invoke-static {}, Lccc71/pmw/a/ah;->o()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1151
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lccc71/pmw/a/ah;->O:[Lccc71/pmw/a/ap;

    sget v2, Lccc71/pmw/a/ah;->J:I

    aget-object v1, v1, v2

    sget-object v2, Lccc71/pmw/a/ap;->d:Lccc71/pmw/a/ap;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static r()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1156
    invoke-static {}, Lccc71/pmw/a/ah;->o()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1159
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lccc71/pmw/a/ah;->O:[Lccc71/pmw/a/ap;

    sget v2, Lccc71/pmw/a/ah;->J:I

    aget-object v1, v1, v2

    sget-object v2, Lccc71/pmw/a/ap;->e:Lccc71/pmw/a/ap;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static t()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1477
    sget v1, Lccc71/pmw/a/ah;->H:I

    sget v2, Lccc71/pmw/a/ah;->p:I

    if-ne v1, v2, :cond_0

    .line 1479
    new-instance v1, Lccc71/pmw/a/ah;

    invoke-direct {v1}, Lccc71/pmw/a/ah;-><init>()V

    invoke-virtual {v1, v0}, Lccc71/pmw/a/ah;->g(I)I

    .line 1481
    :cond_0
    sget v1, Lccc71/pmw/a/ah;->H:I

    sget v2, Lccc71/pmw/a/ah;->q:I

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static w()Z
    .locals 2

    .prologue
    .line 1605
    new-instance v0, Ljava/io/File;

    sget-object v1, Lccc71/pmw/a/ah;->A:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1607
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public static x()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1905
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v3

    .line 1908
    :goto_0
    sget v4, Lccc71/pmw/a/ah;->a:I

    if-lt v0, v4, :cond_1

    .line 1919
    :cond_0
    const-string v0, "chmod 666 /sys/devices/system/cpu/cpu/online\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1920
    const-string v0, "chmod 666 /sys/devices/system/cpu/cpu/offline\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1922
    new-instance v0, Lccc71/pmw/b/h;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    move-object v4, v2

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lccc71/pmw/b/h;-><init>(Ljava/lang/String;Landroid/os/Handler;ZLjava/lang/Object;ZZ)V

    .line 1923
    return-void

    .line 1910
    :cond_1
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "/sys/devices/system/cpu/cpu"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1911
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1913
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "chmod 666 /sys/devices/system/cpu/cpu"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/online\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1914
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static y()Z
    .locals 2

    .prologue
    .line 1930
    new-instance v0, Ljava/io/File;

    sget-object v1, Lccc71/pmw/a/ah;->r:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1931
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1933
    const/4 v0, 0x1

    .line 1936
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static z()Z
    .locals 2

    .prologue
    .line 1944
    new-instance v0, Ljava/io/File;

    sget-object v1, Lccc71/pmw/a/ah;->s:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1945
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1947
    const/4 v0, 0x1

    .line 1950
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2099
    :try_start_0
    invoke-direct {p0}, Lccc71/pmw/a/ah;->F()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2111
    :cond_0
    return-void

    .line 2101
    :catch_0
    move-exception v1

    .line 2103
    new-array v2, v0, [Ljava/lang/String;

    sput-object v2, Lccc71/pmw/a/ah;->aj:[Ljava/lang/String;

    .line 2104
    new-array v2, v0, [I

    sput-object v2, Lccc71/pmw/a/ah;->ak:[I

    .line 2106
    const-string v2, "process_monitor_widget"

    const-string v3, "Cannot load CPU data, trying to change permissions on required files!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2107
    invoke-static {}, Lccc71/pmw/a/ah;->b()I

    move-result v1

    .line 2108
    :goto_0
    if-ge v0, v1, :cond_0

    .line 2109
    invoke-direct {p0, v0}, Lccc71/pmw/a/ah;->i(I)V

    .line 2108
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final B()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 2758
    sget v0, Lccc71/pmw/a/ah;->F:I

    if-ne v0, v7, :cond_1

    .line 2759
    new-instance v0, Lccc71/pmw/b/h;

    const-string v1, "echo -n enabled > /sys/class/thermal/thermal_zone1/mode"

    move-object v4, v2

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lccc71/pmw/b/h;-><init>(Ljava/lang/String;Landroid/os/Handler;ZLjava/lang/Object;ZZ)V

    .line 2763
    :goto_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lccc71/pmw/a/ah;->G:[Ljava/lang/String;

    sget v2, Lccc71/pmw/a/ah;->F:I

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2767
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/16 v0, 0x14

    invoke-direct {v1, v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 2768
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 2769
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 2771
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 2773
    sget v0, Lccc71/pmw/a/ah;->q:I

    sput v0, Lccc71/pmw/a/ah;->F:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2786
    :cond_0
    :goto_1
    return-void

    .line 2761
    :cond_1
    new-instance v0, Lccc71/pmw/b/h;

    const-string v1, "echo -n enabled > /sys/class/thermal/thermal_zone0/mode"

    move-object v4, v2

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lccc71/pmw/b/h;-><init>(Ljava/lang/String;Landroid/os/Handler;ZLjava/lang/Object;ZZ)V

    goto :goto_0

    .line 2775
    :cond_2
    :try_start_1
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lccc71/pmw/a/ah;->F:I

    if-ne v0, v7, :cond_0

    .line 2777
    const/16 v0, 0x8

    sput v0, Lccc71/pmw/a/ah;->F:I

    .line 2778
    invoke-virtual {p0}, Lccc71/pmw/a/ah;->B()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 2783
    :catch_0
    move-exception v0

    const-string v0, "process_monitor_widget"

    const-string v1, "Cannot load CPU temperature using this kernel!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2784
    sget v0, Lccc71/pmw/a/ah;->q:I

    sput v0, Lccc71/pmw/a/ah;->F:I

    goto :goto_1
.end method

.method public final a(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 912
    invoke-static {p1}, Lccc71/pmw/a/ah;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccc71/pmw/a/ah;->d(Ljava/lang/String;)Z

    .line 913
    return-void
.end method

.method public final a(Z)[[I
    .locals 1
    .parameter

    .prologue
    .line 1164
    sget-object v0, Lccc71/pmw/a/ah;->N:[[I

    if-nez v0, :cond_0

    .line 1165
    invoke-direct {p0, p1}, Lccc71/pmw/a/ah;->c(Z)V

    .line 1167
    :cond_0
    sget-object v0, Lccc71/pmw/a/ah;->N:[[I

    return-object v0
.end method

.method public final a([[I)[[I
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 1459
    invoke-direct {p0, p1}, Lccc71/pmw/a/ah;->b([[I)Ljava/lang/String;

    move-result-object v1

    .line 1461
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1463
    const-string v0, "process_monitor_widget"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Running voltage command: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    new-instance v0, Lccc71/pmw/b/h;

    move-object v4, v2

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lccc71/pmw/b/h;-><init>(Ljava/lang/String;Landroid/os/Handler;ZLjava/lang/Object;ZZ)V

    .line 1470
    :cond_0
    invoke-direct {p0, v3}, Lccc71/pmw/a/ah;->c(Z)V

    .line 1472
    invoke-virtual {p0}, Lccc71/pmw/a/ah;->s()[[I

    move-result-object v0

    return-object v0
.end method

.method public final b(Z)V
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1894
    invoke-static {}, Lccc71/pmw/a/ah;->E()Ljava/lang/String;

    move-result-object v1

    .line 1895
    if-eqz p1, :cond_0

    .line 1897
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lccc71/pmw/a/ah;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccc71/pmw/a/ah;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1900
    :cond_0
    new-instance v0, Lccc71/pmw/b/h;

    const/4 v5, 0x0

    move-object v4, v2

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lccc71/pmw/b/h;-><init>(Ljava/lang/String;Landroid/os/Handler;ZLjava/lang/Object;ZZ)V

    .line 1901
    return-void
.end method

.method public final c()V
    .locals 4

    .prologue
    .line 245
    iget-object v0, p0, Lccc71/pmw/a/ah;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 249
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    const-string v2, "/proc/cpuinfo"

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 251
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 255
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :cond_0
    :goto_1
    iget-object v0, p0, Lccc71/pmw/a/ah;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 268
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    const-string v2, "/proc/version"

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 270
    :goto_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    .line 274
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 282
    :cond_1
    :goto_3
    return-void

    .line 253
    :cond_2
    :try_start_2
    iget-object v2, p0, Lccc71/pmw/a/ah;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 258
    :catch_0
    move-exception v0

    .line 260
    const-string v1, "process_monitor_widget"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to get cpu information:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 272
    :cond_3
    :try_start_3
    iget-object v2, p0, Lccc71/pmw/a/ah;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 277
    :catch_1
    move-exception v0

    .line 279
    const-string v1, "process_monitor_widget"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to get version information:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 1038
    invoke-static {p1}, Lccc71/pmw/a/ah;->e(Ljava/lang/String;)[[I

    move-result-object v0

    .line 1045
    if-eqz v0, :cond_0

    .line 1047
    invoke-virtual {p0, v0}, Lccc71/pmw/a/ah;->a([[I)[[I

    .line 1048
    const/4 v0, 0x1

    .line 1051
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d(I)I
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 684
    sget-object v0, Lccc71/pmw/a/ah;->ak:[I

    if-nez v0, :cond_0

    .line 685
    invoke-virtual {p0}, Lccc71/pmw/a/ah;->A()V

    .line 687
    :cond_0
    sget-object v3, Lccc71/pmw/a/ah;->ak:[I

    .line 688
    array-length v4, v3

    .line 690
    aget v0, v3, v1

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 691
    const/4 v2, 0x1

    :goto_0
    if-lt v2, v4, :cond_1

    .line 700
    aget v0, v3, v1

    return v0

    .line 693
    :cond_1
    aget v5, v3, v2

    sub-int/2addr v5, p1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, v0, :cond_2

    .line 696
    aget v0, v3, v2

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    move v1, v2

    .line 691
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public final d(Ljava/lang/String;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1056
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1057
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 1059
    invoke-direct {p0, v0}, Lccc71/pmw/a/ah;->c(Z)V

    .line 1060
    sget-object v1, Lccc71/pmw/a/ah;->N:[[I

    invoke-direct {p0, v1}, Lccc71/pmw/a/ah;->b([[I)Ljava/lang/String;

    move-result-object v4

    .line 1062
    const/4 v2, 0x0

    .line 1065
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/FileWriter;

    invoke-direct {v5, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    const/16 v6, 0x100

    invoke-direct {v1, v5, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1066
    :try_start_1
    invoke-virtual {v1, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1067
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1076
    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_0

    .line 1080
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1086
    :goto_2
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 1075
    :catchall_0
    move-exception v0

    .line 1076
    :goto_3
    if-eqz v2, :cond_1

    .line 1080
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1086
    :goto_4
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 1088
    :cond_1
    throw v0

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_4

    .line 1075
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_3

    :catch_3
    move-exception v2

    goto :goto_1
.end method

.method public final d(Landroid/content/Context;)[[I
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x2

    const/4 v2, 0x0

    .line 1400
    sget v0, Lccc71/pmw/a/ah;->J:I

    if-ltz v0, :cond_4

    sget-object v0, Lccc71/pmw/a/ah;->O:[Lccc71/pmw/a/ap;

    sget v1, Lccc71/pmw/a/ah;->J:I

    aget-object v0, v0, v1

    sget-object v1, Lccc71/pmw/a/ap;->a:Lccc71/pmw/a/ap;

    if-ne v0, v1, :cond_4

    .line 1402
    sget-object v0, Lccc71/pmw/a/ah;->N:[[I

    array-length v0, v0

    if-eqz v0, :cond_0

    sget-object v0, Lccc71/pmw/a/ah;->N:[[I

    aget-object v0, v0, v2

    array-length v0, v0

    if-ge v0, v6, :cond_3

    .line 1404
    :cond_0
    const-string v0, "process_monitor_widget"

    const-string v1, "STD_Reset table incoherent: no reset data stored, reading again"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    invoke-direct {p0, v7}, Lccc71/pmw/a/ah;->c(Z)V

    .line 1406
    sget-object v0, Lccc71/pmw/a/ah;->N:[[I

    array-length v0, v0

    if-eqz v0, :cond_1

    sget-object v0, Lccc71/pmw/a/ah;->N:[[I

    aget-object v0, v0, v2

    array-length v0, v0

    if-ge v0, v6, :cond_3

    .line 1407
    :cond_1
    const/4 v0, 0x0

    .line 1422
    :cond_2
    :goto_0
    return-object v0

    .line 1410
    :cond_3
    sget-object v0, Lccc71/pmw/a/ah;->N:[[I

    array-length v3, v0

    .line 1411
    filled-new-array {v3, v6}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    move v1, v2

    .line 1412
    :goto_1
    if-ge v1, v3, :cond_2

    .line 1414
    aget-object v4, v0, v1

    sget-object v5, Lccc71/pmw/a/ah;->N:[[I

    aget-object v5, v5, v1

    aget v5, v5, v2

    aput v5, v4, v2

    .line 1415
    aget-object v4, v0, v1

    sget-object v5, Lccc71/pmw/a/ah;->N:[[I

    aget-object v5, v5, v1

    aget v5, v5, v6

    aput v5, v4, v7

    .line 1412
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1422
    :cond_4
    invoke-static {p1}, Lccc71/pmw/a/ah;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/a/ah;->e(Ljava/lang/String;)[[I

    move-result-object v0

    goto :goto_0
.end method

.method public final e(I)I
    .locals 4
    .parameter

    .prologue
    .line 705
    sget-object v0, Lccc71/pmw/a/ah;->ak:[I

    if-nez v0, :cond_0

    .line 706
    invoke-virtual {p0}, Lccc71/pmw/a/ah;->A()V

    .line 708
    :cond_0
    sget-object v1, Lccc71/pmw/a/ah;->ak:[I

    .line 709
    array-length v2, v1

    .line 710
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_1

    .line 718
    :goto_1
    return p1

    .line 712
    :cond_1
    aget v3, v1, v0

    if-le v3, p1, :cond_2

    .line 714
    aget p1, v1, v0

    goto :goto_1

    .line 710
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final e()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 338
    sget-object v0, Lccc71/pmw/a/ah;->aj:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 339
    invoke-virtual {p0}, Lccc71/pmw/a/ah;->A()V

    .line 340
    :cond_0
    sget-object v0, Lccc71/pmw/a/ah;->aj:[Ljava/lang/String;

    if-nez v0, :cond_1

    .line 341
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lccc71/pmw/a/ah;->aj:[Ljava/lang/String;

    .line 343
    :cond_1
    sget-object v0, Lccc71/pmw/a/ah;->aj:[Ljava/lang/String;

    return-object v0
.end method

.method public final e(Landroid/content/Context;)[[I
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 1428
    sget-object v0, Lccc71/pmw/a/ah;->O:[Lccc71/pmw/a/ap;

    sget v1, Lccc71/pmw/a/ah;->J:I

    aget-object v0, v0, v1

    sget-object v1, Lccc71/pmw/a/ap;->a:Lccc71/pmw/a/ap;

    if-ne v0, v1, :cond_4

    .line 1430
    sget-object v0, Lccc71/pmw/a/ah;->N:[[I

    array-length v0, v0

    if-eqz v0, :cond_0

    sget-object v0, Lccc71/pmw/a/ah;->N:[[I

    aget-object v0, v0, v5

    array-length v0, v0

    if-ge v0, v7, :cond_2

    .line 1432
    :cond_0
    const-string v0, "process_monitor_widget"

    const-string v1, "STD_Reset table incoherent: no reset data stored, reading again"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    invoke-direct {p0, v3}, Lccc71/pmw/a/ah;->c(Z)V

    .line 1434
    sget-object v0, Lccc71/pmw/a/ah;->N:[[I

    array-length v0, v0

    if-eqz v0, :cond_1

    sget-object v0, Lccc71/pmw/a/ah;->N:[[I

    aget-object v0, v0, v5

    array-length v0, v0

    if-ge v0, v7, :cond_2

    .line 1435
    :cond_1
    invoke-virtual {p0}, Lccc71/pmw/a/ah;->s()[[I

    move-result-object v0

    .line 1453
    :goto_0
    return-object v0

    .line 1438
    :cond_2
    sget-object v0, Lccc71/pmw/a/ah;->N:[[I

    array-length v0, v0

    filled-new-array {v0, v7}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    .line 1439
    sget-object v1, Lccc71/pmw/a/ah;->N:[[I

    array-length v2, v1

    move v1, v5

    .line 1440
    :goto_1
    if-lt v1, v2, :cond_3

    .line 1446
    invoke-virtual {p0, v0}, Lccc71/pmw/a/ah;->a([[I)[[I

    move-result-object v0

    goto :goto_0

    .line 1442
    :cond_3
    aget-object v4, v0, v1

    sget-object v6, Lccc71/pmw/a/ah;->N:[[I

    aget-object v6, v6, v1

    aget v6, v6, v5

    aput v6, v4, v5

    .line 1443
    aget-object v4, v0, v1

    sget-object v6, Lccc71/pmw/a/ah;->N:[[I

    aget-object v6, v6, v1

    aget v6, v6, v7

    aput v6, v4, v3

    .line 1440
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1450
    :cond_4
    new-instance v0, Lccc71/pmw/b/h;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "sh "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lccc71/pmw/a/ah;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v4, v2

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lccc71/pmw/b/h;-><init>(Ljava/lang/String;Landroid/os/Handler;ZLjava/lang/Object;ZZ)V

    .line 1452
    invoke-direct {p0, v3}, Lccc71/pmw/a/ah;->c(Z)V

    .line 1453
    sget-object v0, Lccc71/pmw/a/ah;->N:[[I

    invoke-virtual {p0, v0}, Lccc71/pmw/a/ah;->a([[I)[[I

    move-result-object v0

    goto :goto_0
.end method

.method public final f(I)I
    .locals 4
    .parameter

    .prologue
    .line 723
    sget-object v0, Lccc71/pmw/a/ah;->ak:[I

    if-nez v0, :cond_0

    .line 724
    invoke-virtual {p0}, Lccc71/pmw/a/ah;->A()V

    .line 726
    :cond_0
    sget-object v1, Lccc71/pmw/a/ah;->ak:[I

    .line 727
    array-length v2, v1

    .line 728
    const/4 v0, 0x1

    :goto_0
    if-lt v0, v2, :cond_1

    .line 736
    :goto_1
    return p1

    .line 730
    :cond_1
    aget v3, v1, v0

    if-lt v3, p1, :cond_2

    .line 732
    add-int/lit8 v0, v0, -0x1

    aget p1, v1, v0

    goto :goto_1

    .line 728
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final f(Landroid/content/Context;)V
    .locals 7
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1667
    iput-object p1, p0, Lccc71/pmw/a/ah;->ac:Landroid/content/Context;

    .line 1669
    const-string v0, "mount -o remount,rw /dev/block/mtdblock3 /system\n"

    .line 1670
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "rm "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lccc71/pmw/a/ah;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1671
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "mount -o remount,ro /dev/block/mtdblock3 /system\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1676
    :try_start_0
    new-instance v2, Lccc71/pmw/a/ai;

    invoke-direct {v2, p0}, Lccc71/pmw/a/ai;-><init>(Lccc71/pmw/a/ah;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1700
    :goto_0
    new-instance v0, Lccc71/pmw/b/h;

    const/4 v5, 0x0

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lccc71/pmw/b/h;-><init>(Ljava/lang/String;Landroid/os/Handler;ZLjava/lang/Object;ZZ)V

    .line 1701
    return-void

    .line 1697
    :catch_0
    move-exception v0

    const-string v0, "process_monitor_widget"

    const-string v2, "Cannot use hanlders - no toat possible"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v4

    goto :goto_0
.end method

.method public final f()[I
    .locals 1

    .prologue
    .line 351
    sget-object v0, Lccc71/pmw/a/ah;->ak:[I

    if-nez v0, :cond_0

    .line 352
    invoke-virtual {p0}, Lccc71/pmw/a/ah;->A()V

    .line 353
    :cond_0
    sget-object v0, Lccc71/pmw/a/ah;->ak:[I

    if-nez v0, :cond_1

    .line 354
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lccc71/pmw/a/ah;->ak:[I

    .line 356
    :cond_1
    sget-object v0, Lccc71/pmw/a/ah;->ak:[I

    return-object v0
.end method

.method public final g(I)I
    .locals 8
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1495
    sget v0, Lccc71/pmw/a/ah;->H:I

    sget v2, Lccc71/pmw/a/ah;->p:I

    if-ne v0, v2, :cond_1

    .line 1497
    iget-object v0, p0, Lccc71/pmw/a/ah;->I:[Ljava/lang/String;

    array-length v3, v0

    move v2, v1

    .line 1498
    :goto_0
    if-lt v2, v3, :cond_2

    .line 1534
    :cond_0
    :goto_1
    sget v0, Lccc71/pmw/a/ah;->q:I

    sput v0, Lccc71/pmw/a/ah;->H:I

    .line 1537
    :cond_1
    sget v0, Lccc71/pmw/a/ah;->H:I

    if-ltz v0, :cond_8

    .line 1539
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 1540
    sget-wide v4, Lccc71/pmw/a/ah;->ah:J

    sub-long v4, v2, v4

    .line 1542
    sget v0, Lccc71/pmw/a/ah;->o:I

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-gez v0, :cond_5

    if-nez p1, :cond_5

    .line 1543
    sget v0, Lccc71/pmw/a/ah;->ai:I

    .line 1584
    :goto_2
    return v0

    .line 1500
    :cond_2
    new-instance v4, Ljava/io/File;

    if-nez p1, :cond_3

    iget-object v0, p0, Lccc71/pmw/a/ah;->I:[Ljava/lang/String;

    aget-object v0, v0, v2

    :goto_3
    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1501
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1505
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/16 v4, 0x14

    invoke-direct {v0, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 1506
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 1507
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 1509
    sput v2, Lccc71/pmw/a/ah;->H:I

    .line 1510
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1512
    sput v0, Lccc71/pmw/a/ah;->ai:I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 1518
    :catch_0
    move-exception v0

    sput v2, Lccc71/pmw/a/ah;->H:I

    .line 1519
    sget-boolean v0, Lccc71/pmw/b/h;->c:Z

    if-eqz v0, :cond_0

    .line 1521
    invoke-direct {p0, p1}, Lccc71/pmw/a/ah;->i(I)V

    .line 1523
    sget v0, Lccc71/pmw/a/ah;->ai:I

    goto :goto_2

    .line 1500
    :cond_3
    iget-object v0, p0, Lccc71/pmw/a/ah;->I:[Ljava/lang/String;

    aget-object v0, v0, v2

    const-string v5, "cpu0"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "cpu"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 1526
    :catch_1
    move-exception v0

    .line 1528
    const-string v2, "process_monitor_widget"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to get cpu frequency:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1498
    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    .line 1545
    :cond_5
    sput-wide v2, Lccc71/pmw/a/ah;->ah:J

    .line 1547
    sget v0, Lccc71/pmw/a/ah;->H:I

    iget-object v2, p0, Lccc71/pmw/a/ah;->I:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_8

    .line 1549
    if-nez p1, :cond_6

    iget-object v0, p0, Lccc71/pmw/a/ah;->I:[Ljava/lang/String;

    sget v2, Lccc71/pmw/a/ah;->H:I

    aget-object v0, v0, v2

    .line 1550
    :goto_4
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1553
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1555
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x14

    invoke-direct {v1, v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 1556
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 1557
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 1559
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1561
    sput v0, Lccc71/pmw/a/ah;->ai:I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_2

    .line 1570
    :catch_2
    move-exception v0

    sget-boolean v0, Lccc71/pmw/b/h;->c:Z

    if-eqz v0, :cond_8

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1572
    invoke-direct {p0, p1}, Lccc71/pmw/a/ah;->i(I)V

    .line 1574
    sget v0, Lccc71/pmw/a/ah;->ai:I

    goto/16 :goto_2

    .line 1549
    :cond_6
    iget-object v0, p0, Lccc71/pmw/a/ah;->I:[Ljava/lang/String;

    sget v2, Lccc71/pmw/a/ah;->H:I

    aget-object v0, v0, v2

    const-string v2, "cpu0"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cpu"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_7
    move v0, v1

    .line 1564
    goto/16 :goto_2

    .line 1577
    :catch_3
    move-exception v0

    .line 1579
    const-string v1, "process_monitor_widget"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to get cpu frequency:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    :cond_8
    sget v0, Lccc71/pmw/a/ah;->ai:I

    goto/16 :goto_2
.end method

.method public final g()Ljava/lang/String;
    .locals 5

    .prologue
    .line 364
    const/4 v0, 0x0

    .line 367
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    sget-boolean v2, Lccc71/pmw/a/ah;->j:Z

    if-eqz v2, :cond_0

    sget-object v2, Lccc71/pmw/a/ah;->ap:Ljava/lang/String;

    :goto_0
    invoke-direct {v3, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x14

    invoke-direct {v1, v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 368
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 369
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 399
    :goto_1
    return-object v0

    .line 367
    :cond_0
    :try_start_2
    sget-object v2, Lccc71/pmw/a/ah;->R:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 376
    :catch_0
    move-exception v1

    :goto_2
    const/4 v1, 0x0

    :try_start_3
    invoke-direct {p0, v1}, Lccc71/pmw/a/ah;->i(I)V

    .line 377
    const-string v1, "process_monitor_widget"

    const-string v2, "Cannot find governor file"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 386
    if-eqz v0, :cond_1

    .line 390
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 399
    :cond_1
    :goto_3
    const-string v0, ""

    goto :goto_1

    .line 381
    :catch_1
    move-exception v1

    :goto_4
    const/4 v1, 0x0

    :try_start_5
    invoke-direct {p0, v1}, Lccc71/pmw/a/ah;->i(I)V

    .line 382
    const-string v1, "process_monitor_widget"

    const-string v2, "Cannot load governor file"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 386
    if-eqz v0, :cond_1

    .line 390
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    .line 395
    :catch_2
    move-exception v0

    goto :goto_3

    .line 385
    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 386
    :goto_5
    if-eqz v1, :cond_2

    .line 390
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 395
    :cond_2
    :goto_6
    throw v0

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_6

    .line 385
    :catchall_1
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_5

    .line 381
    :catch_5
    move-exception v0

    move-object v0, v1

    goto :goto_4

    .line 376
    :catch_6
    move-exception v0

    move-object v0, v1

    goto :goto_2
.end method

.method public final g(Landroid/content/Context;)V
    .locals 7
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1708
    iput-object p1, p0, Lccc71/pmw/a/ah;->ac:Landroid/content/Context;

    .line 1710
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1712
    const-string v0, "mount -o remount,rw /dev/block/mtdblock3 /system\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1713
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "rm "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lccc71/pmw/a/ah;->s:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1714
    const-string v0, "mount -o remount,ro /dev/block/mtdblock3 /system\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1719
    :try_start_0
    new-instance v2, Lccc71/pmw/a/aj;

    invoke-direct {v2, p0}, Lccc71/pmw/a/aj;-><init>(Lccc71/pmw/a/ah;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1743
    :goto_0
    new-instance v0, Lccc71/pmw/b/h;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lccc71/pmw/b/h;-><init>(Ljava/lang/String;Landroid/os/Handler;ZLjava/lang/Object;ZZ)V

    .line 1744
    return-void

    .line 1740
    :catch_0
    move-exception v0

    const-string v0, "process_monitor_widget"

    const-string v2, "Cannot use hanlders - no toat possible"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v4

    goto :goto_0
.end method

.method public final h()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 510
    .line 513
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    sget-boolean v3, Lccc71/pmw/a/ah;->j:Z

    if-eqz v3, :cond_1

    sget-object v3, Lccc71/pmw/a/ah;->an:Ljava/lang/String;

    :goto_0
    invoke-direct {v4, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x14

    invoke-direct {v2, v4, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_4

    .line 514
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 515
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_7

    .line 518
    :try_start_2
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 548
    :cond_0
    :goto_1
    return v0

    .line 513
    :cond_1
    sget-object v3, Lccc71/pmw/a/ah;->S:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_0

    .line 522
    :catch_0
    move-exception v2

    :goto_2
    :try_start_3
    const-string v2, "process_monitor_widget"

    const-string v3, "Cannot find max frequency file"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lccc71/pmw/a/ah;->i(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 535
    if-eqz v1, :cond_0

    .line 539
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 544
    :catch_1
    move-exception v1

    goto :goto_1

    .line 527
    :catch_2
    move-exception v2

    :goto_3
    :try_start_5
    const-string v2, "process_monitor_widget"

    const-string v3, "Cannot load max frequency file"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 535
    if-eqz v1, :cond_0

    .line 539
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 544
    :catch_3
    move-exception v1

    goto :goto_1

    .line 531
    :catch_4
    move-exception v2

    :goto_4
    :try_start_7
    const-string v2, "process_monitor_widget"

    const-string v3, "Cannot parse max frequency file"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 535
    if-eqz v1, :cond_0

    .line 539
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_1

    .line 544
    :catch_5
    move-exception v1

    goto :goto_1

    .line 534
    :catchall_0
    move-exception v0

    .line 535
    :goto_5
    if-eqz v1, :cond_2

    .line 539
    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 544
    :cond_2
    :goto_6
    throw v0

    :catch_6
    move-exception v1

    goto :goto_6

    .line 534
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_5

    .line 531
    :catch_7
    move-exception v1

    move-object v1, v2

    goto :goto_4

    .line 527
    :catch_8
    move-exception v1

    move-object v1, v2

    goto :goto_3

    .line 522
    :catch_9
    move-exception v1

    move-object v1, v2

    goto :goto_2
.end method

.method public final h(Landroid/content/Context;)V
    .locals 8
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1751
    iput-object p1, p0, Lccc71/pmw/a/ah;->ac:Landroid/content/Context;

    .line 1756
    invoke-virtual {p0}, Lccc71/pmw/a/ah;->g()Ljava/lang/String;

    move-result-object v0

    .line 1757
    invoke-static {p1}, Lccc71/pmw/lib/pmw_settings;->C(Landroid/content/Context;)I

    move-result v1

    .line 1758
    const-string v2, "ondemand"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1760
    invoke-static {p1}, Lccc71/pmw/lib/pmw_settings;->D(Landroid/content/Context;)I

    move-result v0

    .line 1761
    invoke-static {p1}, Lccc71/pmw/lib/pmw_settings;->E(Landroid/content/Context;)I

    move-result v2

    .line 1762
    invoke-static {v1, v0, v2}, Lccc71/pmw/a/ah;->c(III)Ljava/lang/String;

    move-result-object v5

    .line 1777
    :goto_0
    invoke-virtual {p0}, Lccc71/pmw/a/ah;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lccc71/pmw/a/ah;->i()I

    move-result v2

    invoke-virtual {p0}, Lccc71/pmw/a/ah;->h()I

    move-result v3

    invoke-virtual {p0, v7}, Lccc71/pmw/a/ah;->a(Z)[[I

    move-result-object v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lccc71/pmw/a/ah;->a(Ljava/lang/String;II[[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1781
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lccc71/utils/android/y;->a()Lccc71/utils/android/y;

    move-result-object v3

    invoke-virtual {v3, p1}, Lccc71/utils/android/y;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/99pmw_script.tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1782
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    const/16 v4, 0x100

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 1783
    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1784
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 1786
    const-string v0, "cp"

    invoke-static {p1, v0}, Lccc71/pmw/b/h;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1787
    const-string v2, "mount -o remount,rw /dev/block/mtdblock3 /system\n"

    .line 1788
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lccc71/pmw/a/ah;->r:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1789
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "rm "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1790
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "chmod 777 "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lccc71/pmw/a/ah;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1791
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "mount -o remount,ro /dev/block/mtdblock3 /system\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1796
    :try_start_1
    new-instance v2, Lccc71/pmw/a/ak;

    invoke-direct {v2, p0}, Lccc71/pmw/a/ak;-><init>(Lccc71/pmw/a/ah;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1819
    :goto_1
    :try_start_2
    new-instance v0, Lccc71/pmw/b/h;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lccc71/pmw/b/h;-><init>(Ljava/lang/String;Landroid/os/Handler;ZLjava/lang/Object;ZZ)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1827
    :goto_2
    return-void

    .line 1764
    :cond_0
    const-string v2, "interactive"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1766
    invoke-static {p1}, Lccc71/pmw/lib/pmw_settings;->H(Landroid/content/Context;)I

    move-result v0

    .line 1767
    invoke-static {v1, v0}, Lccc71/pmw/a/ah;->b(II)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 1769
    :cond_1
    const-string v2, "conservative"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1771
    invoke-static {p1}, Lccc71/pmw/lib/pmw_settings;->F(Landroid/content/Context;)I

    move-result v0

    .line 1772
    invoke-static {p1}, Lccc71/pmw/lib/pmw_settings;->G(Landroid/content/Context;)I

    move-result v2

    .line 1774
    invoke-static {v1, v0, v2}, Lccc71/pmw/a/ah;->d(III)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 1817
    :catch_0
    move-exception v0

    :try_start_3
    const-string v0, "process_monitor_widget"

    const-string v2, "Cannot use hanlders - no toat possible"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v2, v6

    goto :goto_1

    .line 1823
    :catch_1
    move-exception v0

    const-string v0, "process_monitor_widget"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t copy script to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lccc71/pmw/a/ah;->r:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    iget-object v0, p0, Lccc71/pmw/a/ah;->ac:Landroid/content/Context;

    iget-object v1, p0, Lccc71/pmw/a/ah;->ac:Landroid/content/Context;

    sget v2, Lccc71/pmw/lib/g;->dK:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1825
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_2
    move-object v5, v6

    goto/16 :goto_0
.end method

.method public final i(Landroid/content/Context;)V
    .locals 8
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x0

    .line 1834
    iput-object p1, p0, Lccc71/pmw/a/ah;->ac:Landroid/content/Context;

    .line 1836
    invoke-static {}, Lccc71/pmw/a/ah;->E()Ljava/lang/String;

    move-result-object v1

    .line 1840
    :try_start_0
    const-string v2, "98pmw_script"

    const-string v3, ".tmp"

    invoke-static {v2, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 1841
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    const/16 v5, 0x100

    invoke-direct {v3, v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 1842
    invoke-virtual {v3, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1843
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    .line 1845
    const-string v1, "cp"

    invoke-static {p1, v1}, Lccc71/pmw/b/h;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1846
    const-string v3, "mount -o remount,rw /dev/block/mtdblock3 /system\n"

    .line 1847
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lccc71/pmw/a/ah;->s:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1848
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "rm "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1849
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "chmod 777 "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lccc71/pmw/a/ah;->s:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1850
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "mount -o remount,ro /dev/block/mtdblock3 /system\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1855
    :try_start_1
    new-instance v2, Lccc71/pmw/a/al;

    invoke-direct {v2, p0}, Lccc71/pmw/a/al;-><init>(Lccc71/pmw/a/ah;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1879
    :goto_0
    :try_start_2
    new-instance v0, Lccc71/pmw/b/h;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lccc71/pmw/b/h;-><init>(Ljava/lang/String;Landroid/os/Handler;ZLjava/lang/Object;ZZ)V

    .line 1887
    :goto_1
    return-void

    .line 1876
    :catch_0
    move-exception v2

    const-string v2, "process_monitor_widget"

    const-string v3, "Cannot use hanlders - no toat possible"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v2, v0

    goto :goto_0

    .line 1883
    :catch_1
    move-exception v0

    const-string v0, "process_monitor_widget"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t copy script to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lccc71/pmw/a/ah;->s:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1884
    iget-object v0, p0, Lccc71/pmw/a/ah;->ac:Landroid/content/Context;

    iget-object v1, p0, Lccc71/pmw/a/ah;->ac:Landroid/content/Context;

    sget v2, Lccc71/pmw/lib/g;->dK:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1885
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public final k()Z
    .locals 2

    .prologue
    .line 751
    sget v0, Lccc71/pmw/a/ah;->F:I

    sget v1, Lccc71/pmw/a/ah;->p:I

    if-ne v0, v1, :cond_0

    .line 753
    invoke-virtual {p0}, Lccc71/pmw/a/ah;->m()I

    .line 756
    :cond_0
    sget v0, Lccc71/pmw/a/ah;->F:I

    sget v1, Lccc71/pmw/a/ah;->q:I

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final l()Ljava/lang/String;
    .locals 2

    .prologue
    .line 761
    sget v0, Lccc71/pmw/a/ah;->F:I

    sget v1, Lccc71/pmw/a/ah;->p:I

    if-ne v0, v1, :cond_0

    .line 763
    invoke-virtual {p0}, Lccc71/pmw/a/ah;->m()I

    .line 766
    :cond_0
    sget v0, Lccc71/pmw/a/ah;->F:I

    if-ltz v0, :cond_1

    .line 767
    iget-object v0, p0, Lccc71/pmw/a/ah;->G:[Ljava/lang/String;

    sget v1, Lccc71/pmw/a/ah;->F:I

    aget-object v0, v0, v1

    .line 769
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final m()I
    .locals 8

    .prologue
    const/16 v7, 0x3e8

    const/4 v5, 0x2

    const/4 v2, 0x0

    .line 774
    sget v0, Lccc71/pmw/a/ah;->F:I

    sget v1, Lccc71/pmw/a/ah;->p:I

    if-ne v0, v1, :cond_1

    .line 776
    iget-object v0, p0, Lccc71/pmw/a/ah;->G:[Ljava/lang/String;

    array-length v1, v0

    .line 777
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-lt v3, v1, :cond_3

    .line 849
    :cond_0
    :goto_1
    sget v0, Lccc71/pmw/a/ah;->q:I

    sput v0, Lccc71/pmw/a/ah;->F:I

    .line 852
    :cond_1
    sget v0, Lccc71/pmw/a/ah;->F:I

    if-ltz v0, :cond_e

    .line 854
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 855
    sget-wide v3, Lccc71/pmw/a/ah;->af:J

    sub-long v3, v0, v3

    .line 857
    sget v5, Lccc71/pmw/a/ah;->o:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_b

    .line 858
    sget v0, Lccc71/pmw/a/ah;->ag:I

    .line 900
    :cond_2
    :goto_2
    return v0

    .line 779
    :cond_3
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lccc71/pmw/a/ah;->G:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 780
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 785
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    iget-object v4, p0, Lccc71/pmw/a/ah;->G:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-direct {v0, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v4, 0xa

    invoke-direct {v1, v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 786
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 787
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    .line 790
    :try_start_2
    sput v3, Lccc71/pmw/a/ah;->F:I

    .line 792
    if-ne v3, v5, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v4, "0"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 798
    :cond_4
    invoke-direct {p0}, Lccc71/pmw/a/ah;->H()V

    .line 813
    :cond_5
    :goto_3
    sget v0, Lccc71/pmw/a/ah;->ag:I

    goto :goto_2

    .line 802
    :cond_6
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 803
    sput v0, Lccc71/pmw/a/ah;->ag:I

    if-le v0, v7, :cond_7

    .line 805
    sget v0, Lccc71/pmw/a/ah;->ag:I

    div-int/lit16 v0, v0, 0x3e8

    sput v0, Lccc71/pmw/a/ah;->ag:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 815
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 817
    :goto_4
    if-ne v3, v5, :cond_9

    .line 821
    :try_start_3
    sput v3, Lccc71/pmw/a/ah;->F:I

    .line 822
    invoke-direct {p0}, Lccc71/pmw/a/ah;->H()V

    .line 824
    sget v0, Lccc71/pmw/a/ah;->ag:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 833
    if-eqz v1, :cond_2

    .line 837
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_2

    .line 807
    :cond_7
    :try_start_5
    sget v0, Lccc71/pmw/a/ah;->ag:I

    if-gez v0, :cond_5

    .line 809
    sget v0, Lccc71/pmw/a/ah;->ag:I

    neg-int v0, v0

    sput v0, Lccc71/pmw/a/ah;->ag:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_3

    .line 832
    :catchall_0
    move-exception v0

    .line 833
    :goto_5
    if-eqz v2, :cond_8

    .line 837
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 842
    :cond_8
    :goto_6
    throw v0

    .line 828
    :cond_9
    :try_start_7
    const-string v3, "process_monitor_widget"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to get cpu temperature:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 833
    if-eqz v1, :cond_0

    .line 837
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_1

    .line 842
    :catch_2
    move-exception v0

    goto/16 :goto_1

    .line 777
    :cond_a
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_0

    .line 859
    :cond_b
    sput-wide v0, Lccc71/pmw/a/ah;->af:J

    .line 864
    :try_start_9
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    iget-object v3, p0, Lccc71/pmw/a/ah;->G:[Ljava/lang/String;

    sget v4, Lccc71/pmw/a/ah;->F:I

    aget-object v3, v3, v4

    invoke-direct {v0, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v3, 0xa

    invoke-direct {v1, v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 865
    :try_start_a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 866
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    .line 869
    :try_start_b
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 870
    sput v0, Lccc71/pmw/a/ah;->ag:I

    if-le v0, v7, :cond_d

    .line 872
    sget v0, Lccc71/pmw/a/ah;->ag:I

    div-int/lit16 v0, v0, 0x3e8

    sput v0, Lccc71/pmw/a/ah;->ag:I

    .line 878
    :cond_c
    :goto_7
    sget v0, Lccc71/pmw/a/ah;->ag:I

    goto/16 :goto_2

    .line 874
    :cond_d
    sget v0, Lccc71/pmw/a/ah;->ag:I

    if-gez v0, :cond_c

    .line 876
    sget v0, Lccc71/pmw/a/ah;->ag:I

    neg-int v0, v0

    sput v0, Lccc71/pmw/a/ah;->ag:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    goto :goto_7

    .line 880
    :catch_3
    move-exception v0

    .line 882
    :goto_8
    :try_start_c
    const-string v1, "process_monitor_widget"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to get cpu temperature:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 886
    if-eqz v2, :cond_e

    .line 890
    :try_start_d
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    .line 900
    :cond_e
    :goto_9
    sget v0, Lccc71/pmw/a/ah;->ag:I

    goto/16 :goto_2

    .line 885
    :catchall_1
    move-exception v0

    .line 886
    :goto_a
    if-eqz v2, :cond_f

    .line 890
    :try_start_e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6

    .line 895
    :cond_f
    :goto_b
    throw v0

    :catch_4
    move-exception v1

    goto/16 :goto_6

    :catch_5
    move-exception v0

    goto :goto_9

    :catch_6
    move-exception v1

    goto :goto_b

    .line 885
    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_a

    .line 880
    :catch_7
    move-exception v0

    move-object v2, v1

    goto :goto_8

    .line 832
    :catchall_3
    move-exception v0

    move-object v2, v1

    goto/16 :goto_5

    .line 815
    :catch_8
    move-exception v0

    goto/16 :goto_4
.end method

.method public final p()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1138
    invoke-static {}, Lccc71/pmw/a/ah;->t()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1143
    :cond_0
    :goto_0
    return v0

    .line 1141
    :cond_1
    invoke-direct {p0, v0}, Lccc71/pmw/a/ah;->c(Z)V

    .line 1143
    sget v1, Lccc71/pmw/a/ah;->J:I

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final s()[[I
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 1172
    sget-object v0, Lccc71/pmw/a/ah;->N:[[I

    if-nez v0, :cond_0

    .line 1173
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lccc71/pmw/a/ah;->c(Z)V

    .line 1177
    :cond_0
    sget-object v0, Lccc71/pmw/a/ah;->N:[[I

    if-eqz v0, :cond_3

    .line 1179
    sget-object v0, Lccc71/pmw/a/ah;->N:[[I

    array-length v4, v0

    .line 1180
    if-eqz v4, :cond_3

    .line 1182
    sget-object v0, Lccc71/pmw/a/ah;->N:[[I

    aget-object v0, v0, v2

    array-length v5, v0

    .line 1183
    filled-new-array {v4, v5}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    move v3, v2

    .line 1184
    :goto_0
    if-lt v3, v4, :cond_1

    .line 1194
    :goto_1
    return-object v0

    :cond_1
    move v1, v2

    .line 1186
    :goto_2
    if-lt v1, v5, :cond_2

    .line 1184
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 1187
    :cond_2
    aget-object v6, v0, v3

    sget-object v7, Lccc71/pmw/a/ah;->N:[[I

    aget-object v7, v7, v3

    aget v7, v7, v1

    aput v7, v6, v1

    .line 1186
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1194
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final u()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1486
    sget v1, Lccc71/pmw/a/ah;->H:I

    sget v2, Lccc71/pmw/a/ah;->p:I

    if-ne v1, v2, :cond_0

    .line 1488
    invoke-virtual {p0, v0}, Lccc71/pmw/a/ah;->g(I)I

    .line 1490
    :cond_0
    sget v1, Lccc71/pmw/a/ah;->H:I

    sget v2, Lccc71/pmw/a/ah;->q:I

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public final v()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1594
    sget v0, Lccc71/pmw/a/ah;->h:I

    if-nez v0, :cond_0

    .line 1595
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    sget-object v2, Lccc71/pmw/a/ah;->C:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lccc71/pmw/a/ah;->i:I

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    sget-object v2, Lccc71/pmw/a/ah;->B:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lccc71/pmw/a/ah;->h:I

    sget v1, Lccc71/pmw/a/ah;->i:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    sput v0, Lccc71/pmw/a/ah;->i:I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1597
    :cond_0
    :goto_0
    sget v0, Lccc71/pmw/a/ah;->h:I

    sget v1, Lccc71/pmw/a/ah;->i:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 1598
    sget v0, Lccc71/pmw/a/ah;->ai:I

    sget v1, Lccc71/pmw/a/ah;->i:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x64

    sget v1, Lccc71/pmw/a/ah;->h:I

    sget v2, Lccc71/pmw/a/ah;->i:I

    sub-int/2addr v1, v2

    div-int/2addr v0, v1

    .line 1600
    :goto_1
    return v0

    .line 1595
    :catch_0
    move-exception v0

    sget-boolean v0, Lccc71/pmw/b/h;->c:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, v3}, Lccc71/pmw/a/ah;->i(I)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "process_monitor_widget"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to get frequency information:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1600
    :cond_1
    const/16 v0, 0x64

    goto :goto_1
.end method
