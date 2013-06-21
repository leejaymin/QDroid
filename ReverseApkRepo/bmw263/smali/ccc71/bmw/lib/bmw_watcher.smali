.class public Lccc71/bmw/lib/bmw_watcher;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field public static A:Ljava/lang/String;

.field private static B:Ljava/lang/Object;

.field private static C:Lccc71/bmw/lib/bmw_watcher;

.field private static D:B

.field private static E:J

.field private static F:I

.field private static G:I

.field private static H:Z

.field private static I:I

.field private static J:Z

.field private static K:Z

.field private static L:Z

.field private static M:Z

.field private static N:Z

.field private static O:Ljava/lang/String;

.field private static P:Ljava/lang/String;

.field private static Q:Ljava/lang/String;

.field private static R:Ljava/lang/String;

.field private static S:Ljava/lang/String;

.field private static T:Z

.field private static U:Z

.field private static V:Z

.field private static W:Z

.field private static X:Z

.field private static Y:Z

.field private static Z:I

.field public static a:J

.field private static aa:I

.field private static ab:I

.field private static ac:I

.field private static ad:I

.field private static ae:Ljava/lang/String;

.field private static af:Ljava/lang/String;

.field private static ag:Ljava/lang/String;

.field private static ah:Ljava/lang/String;

.field private static ai:Landroid/app/PendingIntent;

.field private static aj:Landroid/content/Intent;

.field private static ak:Landroid/app/NotificationManager;

.field private static al:[Ljava/lang/String;

.field private static am:Ljava/lang/String;

.field private static an:[Lccc71/bmw/lib/eg;

.field private static ao:[Ljava/lang/String;

.field private static synthetic ap:[I

.field public static b:J

.field public static c:Z

.field public static d:Z

.field public static e:Z

.field public static f:I

.field public static g:I

.field public static h:I

.field public static i:I

.field public static j:I

.field public static k:F

.field public static l:Ljava/lang/String;

.field public static m:I

.field public static n:I

.field public static o:I

.field public static p:I

.field public static q:I

.field public static r:I

.field public static s:I

.field static t:Z

.field static u:I

.field static v:I

.field static w:Z

.field public static x:Z

.field public static y:Z

.field static z:Lccc71/bmw/data/readers/a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lccc71/bmw/lib/bmw_watcher;->B:Ljava/lang/Object;

    .line 55
    sput-object v3, Lccc71/bmw/lib/bmw_watcher;->C:Lccc71/bmw/lib/bmw_watcher;

    .line 59
    const-wide/16 v0, 0x0

    sput-wide v0, Lccc71/bmw/lib/bmw_watcher;->a:J

    .line 60
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sput-wide v0, Lccc71/bmw/lib/bmw_watcher;->b:J

    .line 69
    sput-boolean v6, Lccc71/bmw/lib/bmw_watcher;->c:Z

    .line 70
    sput-boolean v6, Lccc71/bmw/lib/bmw_watcher;->d:Z

    .line 71
    sput-boolean v6, Lccc71/bmw/lib/bmw_watcher;->e:Z

    .line 78
    const-wide/16 v0, 0x0

    sput-wide v0, Lccc71/bmw/lib/bmw_watcher;->E:J

    .line 86
    sput v5, Lccc71/bmw/lib/bmw_watcher;->f:I

    .line 87
    sput v2, Lccc71/bmw/lib/bmw_watcher;->g:I

    .line 88
    sput v2, Lccc71/bmw/lib/bmw_watcher;->h:I

    .line 89
    sput v5, Lccc71/bmw/lib/bmw_watcher;->i:I

    .line 90
    sput v2, Lccc71/bmw/lib/bmw_watcher;->j:I

    .line 91
    const/4 v0, 0x0

    sput v0, Lccc71/bmw/lib/bmw_watcher;->k:F

    .line 92
    const-string v0, ""

    sput-object v0, Lccc71/bmw/lib/bmw_watcher;->l:Ljava/lang/String;

    .line 94
    sput v5, Lccc71/bmw/lib/bmw_watcher;->m:I

    .line 96
    const/16 v0, 0x5dc

    sput v0, Lccc71/bmw/lib/bmw_watcher;->n:I

    .line 97
    sput v5, Lccc71/bmw/lib/bmw_watcher;->o:I

    .line 98
    sput v5, Lccc71/bmw/lib/bmw_watcher;->p:I

    .line 102
    sput-boolean v5, Lccc71/bmw/lib/bmw_watcher;->H:Z

    .line 104
    sput v5, Lccc71/bmw/lib/bmw_watcher;->I:I

    .line 105
    sput-boolean v5, Lccc71/bmw/lib/bmw_watcher;->J:Z

    .line 106
    sput-boolean v5, Lccc71/bmw/lib/bmw_watcher;->K:Z

    .line 107
    sput-boolean v5, Lccc71/bmw/lib/bmw_watcher;->L:Z

    .line 108
    sput-boolean v5, Lccc71/bmw/lib/bmw_watcher;->M:Z

    .line 110
    sput v2, Lccc71/bmw/lib/bmw_watcher;->q:I

    .line 111
    sput v5, Lccc71/bmw/lib/bmw_watcher;->r:I

    .line 112
    sput v2, Lccc71/bmw/lib/bmw_watcher;->s:I

    .line 113
    sput-boolean v5, Lccc71/bmw/lib/bmw_watcher;->t:Z

    .line 114
    sput v5, Lccc71/bmw/lib/bmw_watcher;->u:I

    .line 115
    sput v5, Lccc71/bmw/lib/bmw_watcher;->v:I

    .line 117
    sput-boolean v5, Lccc71/bmw/lib/bmw_watcher;->w:Z

    .line 118
    sput-boolean v5, Lccc71/bmw/lib/bmw_watcher;->x:Z

    .line 119
    sput-boolean v5, Lccc71/bmw/lib/bmw_watcher;->y:Z

    .line 120
    sput-object v3, Lccc71/bmw/lib/bmw_watcher;->z:Lccc71/bmw/data/readers/a;

    .line 122
    sput-boolean v5, Lccc71/bmw/lib/bmw_watcher;->N:Z

    .line 123
    const-string v0, ""

    sput-object v0, Lccc71/bmw/lib/bmw_watcher;->O:Ljava/lang/String;

    .line 125
    const-string v0, ""

    sput-object v0, Lccc71/bmw/lib/bmw_watcher;->P:Ljava/lang/String;

    .line 126
    const-string v0, ""

    sput-object v0, Lccc71/bmw/lib/bmw_watcher;->Q:Ljava/lang/String;

    .line 127
    const-string v0, ""

    sput-object v0, Lccc71/bmw/lib/bmw_watcher;->R:Ljava/lang/String;

    .line 128
    const-string v0, ""

    sput-object v0, Lccc71/bmw/lib/bmw_watcher;->S:Ljava/lang/String;

    .line 129
    sput-boolean v5, Lccc71/bmw/lib/bmw_watcher;->T:Z

    .line 131
    sput-boolean v5, Lccc71/bmw/lib/bmw_watcher;->U:Z

    .line 132
    sput-boolean v5, Lccc71/bmw/lib/bmw_watcher;->V:Z

    .line 133
    sput-boolean v5, Lccc71/bmw/lib/bmw_watcher;->W:Z

    .line 134
    sput-boolean v5, Lccc71/bmw/lib/bmw_watcher;->X:Z

    .line 135
    sput-boolean v5, Lccc71/bmw/lib/bmw_watcher;->Y:Z

    .line 140
    sput v6, Lccc71/bmw/lib/bmw_watcher;->ac:I

    .line 141
    sput v5, Lccc71/bmw/lib/bmw_watcher;->ad:I

    .line 151
    sput-object v3, Lccc71/bmw/lib/bmw_watcher;->ak:Landroid/app/NotificationManager;

    .line 153
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 154
    const-string v1, "/sys/class/power_supply/battery/voltage_now"

    aput-object v1, v0, v5

    .line 155
    const-string v1, "/sys/class/power_supply/battery/batt_vol"

    aput-object v1, v0, v6

    .line 156
    const-string v1, "/sys/class/power_supply/battery_gauge/voltage_now"

    aput-object v1, v0, v7

    .line 153
    sput-object v0, Lccc71/bmw/lib/bmw_watcher;->al:[Ljava/lang/String;

    .line 158
    sput-object v3, Lccc71/bmw/lib/bmw_watcher;->am:Ljava/lang/String;

    .line 178
    sput-object v3, Lccc71/bmw/lib/bmw_watcher;->A:Ljava/lang/String;

    .line 191
    const/16 v0, 0x2b

    new-array v0, v0, [Lccc71/bmw/lib/eg;

    .line 192
    new-instance v1, Lccc71/bmw/lib/eg;

    const-string v2, "a500"

    const/16 v3, 0xcbc

    invoke-direct {v1, v2, v3}, Lccc71/bmw/lib/eg;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v5

    .line 193
    new-instance v1, Lccc71/bmw/lib/eg;

    const-string v2, "a501"

    const/16 v3, 0xcbc

    invoke-direct {v1, v2, v3}, Lccc71/bmw/lib/eg;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v6

    .line 194
    new-instance v1, Lccc71/bmw/lib/eg;

    const-string v2, "adr6400l"

    const/16 v3, 0x578

    invoke-direct {v1, v2, v3}, Lccc71/bmw/lib/eg;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v7

    const/4 v1, 0x3

    .line 195
    new-instance v2, Lccc71/bmw/lib/eg;

    const-string v3, "alcatel ot-990"

    const/16 v4, 0x514

    invoke-direct {v2, v3, v4}, Lccc71/bmw/lib/eg;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 196
    new-instance v2, Lccc71/bmw/lib/eg;

    const-string v3, "chagall"

    const/16 v4, 0xc62

    invoke-direct {v2, v3, v4}, Lccc71/bmw/lib/eg;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 197
    new-instance v2, Lccc71/bmw/lib/eg;

    const-string v3, "disco10"

    const/16 v4, 0x1f40

    invoke-direct {v2, v3, v4}, Lccc71/bmw/lib/eg;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 198
    new-instance v2, Lccc71/bmw/lib/eg;

    const-string v3, "droidx"

    const/16 v4, 0x6d6

    invoke-direct {v2, v3, v4}, Lccc71/bmw/lib/eg;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 199
    new-instance v2, Lccc71/bmw/lib/eg;

    const-string v3, "galaxy nexus"

    const/16 v4, 0x6d6

    invoke-direct {v2, v3, v4}, Lccc71/bmw/lib/eg;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 200
    new-instance v2, Lccc71/bmw/lib/eg;

    const-string v3, "garminfone"

    const/16 v4, 0x47e

    invoke-direct {v2, v3, v4}, Lccc71/bmw/lib/eg;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 201
    new-instance v2, Lccc71/bmw/lib/eg;

    const-string v3, "gt-i9100"

    const/16 v4, 0x672

    invoke-direct {v2, v3, v4}, Lccc71/bmw/lib/eg;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 202
    new-instance v2, Lccc71/bmw/lib/eg;

    const-string v3, "gt-i9300"

    const/16 v4, 0x834

    invoke-direct {v2, v3, v4}, Lccc71/bmw/lib/eg;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 203
    new-instance v2, Lccc71/bmw/lib/eg;

    const-string v3, "gt-n7000"

    const/16 v4, 0x9c4

    invoke-direct {v2, v3, v4}, Lccc71/bmw/lib/eg;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 204
    new-instance v2, Lccc71/bmw/lib/eg;

    const-string v3, "gt-p1000l"

    const/16 v4, 0xfa0

    invoke-direct {v2, v3, v4}, Lccc71/bmw/lib/eg;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 205
    new-instance v2, Lccc71/bmw/lib/eg;

    const-string v3, "gt-p3100"

    const/16 v4, 0xfa0

    invoke-direct {v2, v3, v4}, Lccc71/bmw/lib/eg;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 206
    new-instance v2, Lccc71/bmw/lib/eg;

    const-string v3, "gt-p3110"

    const/16 v4, 0xfa0

    invoke-direct {v2, v3, v4}, Lccc71/bmw/lib/eg;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 207
    new-instance v2, Lccc71/bmw/lib/eg;

    const-string v3, "gt-p5100"

    const/16 v4, 0x1b58

    invoke-direct {v2, v3, v4}, Lccc71/bmw/lib/eg;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 208
    new-instance v2, Lccc71/bmw/lib/eg;

    const-string v3, "gt-p5110"

    const/16 v4, 0x1b58

    invoke-direct {v2, v3, v4}, Lccc71/bmw/lib/eg;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 209
    new-instance v2, Lccc71/bmw/lib/eg;

    const-string v3, "gt-p7500"

    const/16 v4, 0x1b58

    invoke-direct {v2, v3, v4}, Lccc71/bmw/lib/eg;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 210
    new-instance v2, Lccc71/bmw/lib/eg;

    const-string v3, "gt-s5660"

    const/16 v4, 0x546

    invoke-direct {v2, v3, v4}, Lccc71/bmw/lib/eg;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 211
    new-instance v2, Lccc71/bmw/lib/eg;

    const-string v3, "gtabcomb"

    const/16 v4, 0xe42

    invoke-direct {v2, v3, v4}, Lccc71/bmw/lib/eg;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 212
    new-instance v2, Lccc71/bmw/lib/eg;

    const-string v3, "htc desire"

    const/16 v4, 0x578

    invoke-direct {v2, v3, v4}, Lccc71/bmw/lib/eg;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 213
    new-instance v2, Lccc71/bmw/lib/eg;

    const-string v3, "htc_x515e"

    const/16 v4, 0x6c2

    invoke-direct {v2, v3, v4}, Lccc71/bmw/lib/eg;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    .line 214
    new-instance v2, Lccc71/bmw/lib/eg;

    const-string v3, "mb860"

    const/16 v4, 0x78a

    invoke-direct {v2, v3, v4}, Lccc71/bmw/lib/eg;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    .line 215
    new-instance v2, Lccc71/bmw/lib/eg;

    const-string v3, "mb886"

    const/16 v4, 0x78a

    invoke-direct {v2, v3, v4}, Lccc71/bmw/lib/eg;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x18

    .line 216
    new-instance v2, Lccc71/bmw/lib/eg;

    const-string v3, "milestone"

    const/16 v4, 0x578

    invoke-direct {v2, v3, v4}, Lccc71/bmw/lib/eg;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x19

    .line 217
    new-instance v2, Lccc71/bmw/lib/eg;

    const-string v3, "nexus 7"

    const/16 v4, 0x10e5

    invoke-direct {v2, v3, v4}, Lccc71/bmw/lib/eg;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    .line 218
    new-instance v2, Lccc71/bmw/lib/eg;

    const-string v3, "p300(funbook)"

    const/16 v4, 0xaf0

    invoke-direct {v2, v3, v4}, Lccc71/bmw/lib/eg;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    .line 219
    new-instance v2, Lccc71/bmw/lib/eg;

    const-string v3, "p4d sirius"

    const/16 v4, 0x1770

    invoke-direct {v2, v3, v4}, Lccc71/bmw/lib/eg;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    .line 220
    new-instance v2, Lccc71/bmw/lib/eg;

    const-string v3, "samsung-sgh-i997"

    const/16 v4, 0x6d6

    invoke-direct {v2, v3, v4}, Lccc71/bmw/lib/eg;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    .line 221
    new-instance v2, Lccc71/bmw/lib/eg;

    const-string v3, "sch-r720"

    const/16 v4, 0x640

    invoke-direct {v2, v3, v4}, Lccc71/bmw/lib/eg;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    .line 222
    new-instance v2, Lccc71/bmw/lib/eg;

    const-string v3, "sch-i905"

    const/16 v4, 0x1a90

    invoke-direct {v2, v3, v4}, Lccc71/bmw/lib/eg;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    .line 223
    new-instance v2, Lccc71/bmw/lib/eg;

    const-string v3, "sgh-i717r"

    const/16 v4, 0x9c4

    invoke-direct {v2, v3, v4}, Lccc71/bmw/lib/eg;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x20

    .line 224
    new-instance v2, Lccc71/bmw/lib/eg;

    const-string v3, "sgh-i727"

    const/16 v4, 0x73a

    invoke-direct {v2, v3, v4}, Lccc71/bmw/lib/eg;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x21

    .line 225
    new-instance v2, Lccc71/bmw/lib/eg;

    const-string v3, "sh530u"

    const/16 v4, 0x7bc

    invoke-direct {v2, v3, v4}, Lccc71/bmw/lib/eg;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x22

    .line 226
    new-instance v2, Lccc71/bmw/lib/eg;

    const-string v3, "smartqt10"

    const/16 v4, 0x1db0

    invoke-direct {v2, v3, v4}, Lccc71/bmw/lib/eg;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x23

    .line 227
    new-instance v2, Lccc71/bmw/lib/eg;

    const-string v3, "sony tablet s"

    const/16 v4, 0x1388

    invoke-direct {v2, v3, v4}, Lccc71/bmw/lib/eg;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x24

    .line 228
    new-instance v2, Lccc71/bmw/lib/eg;

    const-string v3, "sony tablet p"

    const/16 v4, 0xc08

    invoke-direct {v2, v3, v4}, Lccc71/bmw/lib/eg;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x25

    .line 229
    new-instance v2, Lccc71/bmw/lib/eg;

    const-string v3, "transformer tf10"

    const/16 v4, 0xce4

    invoke-direct {v2, v3, v4}, Lccc71/bmw/lib/eg;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x26

    .line 230
    new-instance v2, Lccc71/bmw/lib/eg;

    const-string v3, "tf300t"

    const/16 v4, 0x9c4

    invoke-direct {v2, v3, v4}, Lccc71/bmw/lib/eg;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x27

    .line 231
    new-instance v2, Lccc71/bmw/lib/eg;

    const-string v3, "prime tf20"

    const/16 v4, 0xd34

    invoke-direct {v2, v3, v4}, Lccc71/bmw/lib/eg;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x28

    .line 232
    new-instance v2, Lccc71/bmw/lib/eg;

    const-string v3, "xoom"

    const/16 v4, 0x1964

    invoke-direct {v2, v3, v4}, Lccc71/bmw/lib/eg;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x29

    .line 233
    new-instance v2, Lccc71/bmw/lib/eg;

    const-string v3, "mz601"

    const/16 v4, 0x1964

    invoke-direct {v2, v3, v4}, Lccc71/bmw/lib/eg;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    .line 234
    new-instance v2, Lccc71/bmw/lib/eg;

    const-string v3, "zte-blade"

    const/16 v4, 0x4e2

    invoke-direct {v2, v3, v4}, Lccc71/bmw/lib/eg;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    .line 191
    sput-object v0, Lccc71/bmw/lib/bmw_watcher;->an:[Lccc71/bmw/lib/eg;

    .line 237
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 238
    const-string v1, "/sys/class/power_supply/battery/full_bat"

    aput-object v1, v0, v5

    .line 239
    const-string v1, "/sys/class/power_supply/battery/charge_full_design"

    aput-object v1, v0, v6

    .line 240
    const-string v1, "/sys/class/power_supply/bq27520/charge_full_design"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    .line 241
    const-string v2, "/sys/class/power_supply/bq27500-0/charge_full_design"

    aput-object v2, v0, v1

    .line 237
    sput-object v0, Lccc71/bmw/lib/bmw_watcher;->ao:[Ljava/lang/String;

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static a(Lccc71/bmw/data/a;)I
    .locals 1
    .parameter

    .prologue
    .line 624
    sget v0, Lccc71/bmw/lib/bmw_watcher;->j:I

    invoke-static {p0, v0}, Lccc71/bmw/lib/bmw_watcher;->a(Lccc71/bmw/data/a;I)I

    move-result v0

    return v0
.end method

.method public static a(Lccc71/bmw/data/a;I)I
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 603
    packed-switch p1, :pswitch_data_0

    .line 614
    iget v0, p0, Lccc71/bmw/data/a;->f:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 615
    sget v0, Lccc71/bmw/lib/bmw_watcher;->h:I

    mul-int/lit16 v0, v0, 0xe10

    int-to-float v0, v0

    iget v1, p0, Lccc71/bmw/data/a;->f:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 619
    :goto_0
    return v0

    .line 606
    :pswitch_0
    iget v0, p0, Lccc71/bmw/data/a;->e:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 607
    sget v0, Lccc71/bmw/lib/bmw_watcher;->h:I

    rsub-int/lit8 v0, v0, 0x64

    mul-int/lit16 v0, v0, 0xe10

    int-to-float v0, v0

    iget v1, p0, Lccc71/bmw/data/a;->e:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0

    .line 610
    :pswitch_1
    iget v0, p0, Lccc71/bmw/data/a;->d:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 611
    sget v0, Lccc71/bmw/lib/bmw_watcher;->h:I

    rsub-int/lit8 v0, v0, 0x64

    mul-int/lit16 v0, v0, 0xe10

    int-to-float v0, v0

    iget v1, p0, Lccc71/bmw/data/a;->d:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0

    .line 619
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 603
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Lccc71/bmw/data/a;II)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 560
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 562
    sget v0, Lccc71/bmw/lib/bmw_watcher;->j:I

    if-nez v0, :cond_1

    iget v0, p0, Lccc71/bmw/data/a;->b:I

    sget v1, Lccc71/bmw/lib/bmw_watcher;->h:I

    if-lt v0, v1, :cond_1

    .line 564
    iget v0, p0, Lccc71/bmw/data/a;->b:I

    if-eqz v0, :cond_4

    .line 565
    iget v0, p0, Lccc71/bmw/data/a;->b:I

    sget v1, Lccc71/bmw/lib/bmw_watcher;->h:I

    sub-int/2addr v0, v1

    mul-int/2addr v0, p2

    sget v1, Lccc71/bmw/lib/bmw_watcher;->h:I

    mul-int/2addr v1, p1

    add-int/2addr v0, v1

    iget v1, p0, Lccc71/bmw/data/a;->b:I

    div-int p1, v0, v1

    .line 580
    :cond_0
    :goto_0
    return p1

    .line 567
    :cond_1
    iget v0, p0, Lccc71/bmw/data/a;->b:I

    sget v1, Lccc71/bmw/lib/bmw_watcher;->h:I

    if-gt v0, v1, :cond_4

    .line 569
    iget v0, p0, Lccc71/bmw/data/a;->b:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_2

    .line 570
    sget v0, Lccc71/bmw/lib/bmw_watcher;->h:I

    iget v1, p0, Lccc71/bmw/data/a;->b:I

    sub-int/2addr v0, v1

    mul-int/2addr v0, p2

    sget v1, Lccc71/bmw/lib/bmw_watcher;->h:I

    rsub-int/lit8 v1, v1, 0x64

    mul-int/2addr v1, p1

    add-int/2addr v0, v1

    iget v1, p0, Lccc71/bmw/data/a;->b:I

    rsub-int/lit8 v1, v1, 0x64

    div-int p1, v0, v1

    goto :goto_0

    .line 572
    :cond_2
    sget v0, Lccc71/bmw/lib/bmw_watcher;->h:I

    iget v1, p0, Lccc71/bmw/data/a;->b:I

    sub-int/2addr v0, v1

    mul-int/2addr v0, p2

    sget v1, Lccc71/bmw/lib/bmw_watcher;->h:I

    rsub-int/lit8 v1, v1, 0x64

    mul-int/2addr v1, p1

    add-int/2addr v0, v1

    sget v1, Lccc71/bmw/lib/bmw_watcher;->h:I

    rsub-int/lit8 v1, v1, 0x64

    div-int p1, v0, v1

    goto :goto_0

    .line 575
    :cond_3
    if-nez p1, :cond_0

    .line 577
    if-eqz p2, :cond_4

    move p1, p2

    .line 578
    goto :goto_0

    .line 580
    :cond_4
    invoke-static {}, Lccc71/bmw/lib/bmw_watcher;->d()I

    move-result p1

    goto :goto_0
.end method

.method public static a()J
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    .line 63
    sget-wide v4, Lccc71/bmw/lib/bmw_watcher;->a:J

    sget-boolean v0, Lccc71/bmw/lib/bmw_watcher;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sget-wide v6, Lccc71/bmw/lib/bmw_watcher;->b:J

    sub-long/2addr v0, v6

    :goto_0
    add-long/2addr v0, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    .line 64
    sput-wide v2, Lccc71/bmw/lib/bmw_watcher;->a:J

    .line 65
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sput-wide v2, Lccc71/bmw/lib/bmw_watcher;->b:J

    .line 66
    return-wide v0

    :cond_0
    move-wide v0, v2

    .line 63
    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lccc71/bmw/data/a;)Lccc71/bmw/data/a;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 655
    if-nez p1, :cond_1

    .line 657
    const-string v0, "battery_widget_monitor"

    const-string v1, "Full reset plugged estimation"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    new-instance p1, Lccc71/bmw/data/a;

    invoke-direct {p1}, Lccc71/bmw/data/a;-><init>()V

    .line 665
    :goto_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p1, Lccc71/bmw/data/a;->a:J

    .line 666
    sget v0, Lccc71/bmw/lib/bmw_watcher;->h:I

    iput v0, p1, Lccc71/bmw/data/a;->b:I

    .line 667
    sget v0, Lccc71/bmw/lib/bmw_watcher;->j:I

    iput v0, p1, Lccc71/bmw/data/a;->c:I

    .line 669
    sget v0, Lccc71/bmw/lib/bmw_watcher;->h:I

    if-eqz v0, :cond_0

    .line 670
    invoke-static {p0, p1}, Lccc71/bmw/lib/bmw_settings;->a(Landroid/content/Context;Lccc71/bmw/data/a;)V

    .line 671
    :cond_0
    return-object p1

    .line 662
    :cond_1
    const-string v0, "battery_widget_monitor"

    const-string v1, "Partial reset plugged estimation"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(I)V
    .locals 0
    .parameter

    .prologue
    .line 875
    sput p0, Lccc71/bmw/lib/bmw_watcher;->n:I

    .line 876
    return-void
.end method

.method static a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 278
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->k(Landroid/content/Context;)I

    move-result v0

    sput v0, Lccc71/bmw/lib/bmw_watcher;->n:I

    .line 279
    sget v0, Lccc71/bmw/lib/bmw_watcher;->g:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 281
    sget v0, Lccc71/bmw/lib/bmw_watcher;->n:I

    if-gez v0, :cond_0

    .line 282
    sget v0, Lccc71/bmw/lib/bmw_watcher;->n:I

    neg-int v0, v0

    sput v0, Lccc71/bmw/lib/bmw_watcher;->m:I

    .line 294
    :goto_0
    return-void

    .line 284
    :cond_0
    sget v0, Lccc71/bmw/lib/bmw_watcher;->n:I

    sput v0, Lccc71/bmw/lib/bmw_watcher;->m:I

    goto :goto_0

    .line 286
    :cond_1
    sget v0, Lccc71/bmw/lib/bmw_watcher;->n:I

    if-gez v0, :cond_2

    .line 288
    sget v0, Lccc71/bmw/lib/bmw_watcher;->n:I

    neg-int v0, v0

    sput v0, Lccc71/bmw/lib/bmw_watcher;->m:I

    goto :goto_0

    .line 292
    :cond_2
    sget v0, Lccc71/bmw/lib/bmw_watcher;->g:I

    sput v0, Lccc71/bmw/lib/bmw_watcher;->m:I

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v7, 0xfa

    const/4 v6, 0x0

    .line 1677
    sget-boolean v0, Lccc71/bmw/lib/bmw_watcher;->J:Z

    if-eqz v0, :cond_4

    .line 1679
    sget v0, Lccc71/bmw/lib/c;->q:I

    .line 1680
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1681
    new-instance v2, Landroid/app/Notification;

    const-string v3, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v0, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1682
    iget v0, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v2, Landroid/app/Notification;->flags:I

    .line 1683
    const-string v0, ""

    if-eq p1, v0, :cond_0

    .line 1685
    const-string v0, "battery_widget_monitor"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "triggerAlarm - Playing sound:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1686
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 1688
    :cond_0
    sget-boolean v0, Lccc71/bmw/lib/bmw_watcher;->K:Z

    if-eqz v0, :cond_1

    .line 1690
    const-string v0, "battery_widget_monitor"

    const-string v3, "triggerAlarm - Vibrating"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1691
    iget v0, v2, Landroid/app/Notification;->defaults:I

    or-int/lit8 v0, v0, 0x2

    iput v0, v2, Landroid/app/Notification;->defaults:I

    .line 1693
    :cond_1
    sget-boolean v0, Lccc71/bmw/lib/bmw_watcher;->L:Z

    if-eqz v0, :cond_2

    .line 1695
    const/high16 v0, -0x1

    iput v0, v2, Landroid/app/Notification;->ledARGB:I

    .line 1696
    iput v7, v2, Landroid/app/Notification;->ledOffMS:I

    .line 1697
    iput v7, v2, Landroid/app/Notification;->ledOnMS:I

    .line 1698
    iget v0, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, v2, Landroid/app/Notification;->flags:I

    .line 1701
    :cond_2
    sget-boolean v0, Lccc71/bmw/lib/bmw_watcher;->M:Z

    if-eqz v0, :cond_3

    .line 1702
    iget v0, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, v2, Landroid/app/Notification;->flags:I

    .line 1704
    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sput-object v0, Lccc71/bmw/lib/bmw_watcher;->aj:Landroid/content/Intent;

    .line 1705
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1706
    sget-object v3, Lccc71/bmw/lib/bmw_watcher;->aj:Landroid/content/Intent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".bmw_status"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1707
    sget-object v0, Lccc71/bmw/lib/bmw_watcher;->aj:Landroid/content/Intent;

    invoke-static {p0, v6, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1709
    const-string v3, ""

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, p0, v3, v1, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1711
    sget-object v0, Lccc71/bmw/lib/bmw_watcher;->ak:Landroid/app/NotificationManager;

    invoke-virtual {v0, p2, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1721
    :goto_0
    return-void

    .line 1715
    :cond_4
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    .line 1716
    if-eqz v0, :cond_5

    .line 1717
    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    goto :goto_0

    .line 1719
    :cond_5
    const-string v0, "battery_widget_monitor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot play ringtone:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static b()B
    .locals 3

    .prologue
    .line 74
    sget-byte v0, Lccc71/bmw/lib/bmw_watcher;->D:B

    const/4 v1, 0x1

    sget v2, Lccc71/bmw/lib/bmw_watcher;->j:I

    shl-int/2addr v1, v2

    int-to-byte v1, v1

    sput-byte v1, Lccc71/bmw/lib/bmw_watcher;->D:B

    add-int/lit8 v0, v0, -0x1

    int-to-byte v0, v0

    return v0
.end method

.method public static b(Lccc71/bmw/data/a;)I
    .locals 4
    .parameter

    .prologue
    .line 629
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lccc71/bmw/data/a;->a:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 631
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 633
    sget v2, Lccc71/bmw/lib/bmw_watcher;->j:I

    packed-switch v2, :pswitch_data_0

    .line 644
    iget v2, p0, Lccc71/bmw/data/a;->b:I

    sget v3, Lccc71/bmw/lib/bmw_watcher;->h:I

    if-le v2, v3, :cond_0

    .line 645
    sget v2, Lccc71/bmw/lib/bmw_watcher;->h:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iget v2, p0, Lccc71/bmw/data/a;->b:I

    sget v3, Lccc71/bmw/lib/bmw_watcher;->h:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 650
    :goto_0
    return v0

    .line 636
    :pswitch_0
    iget v2, p0, Lccc71/bmw/data/a;->b:I

    sget v3, Lccc71/bmw/lib/bmw_watcher;->h:I

    if-ge v2, v3, :cond_0

    .line 637
    sget v2, Lccc71/bmw/lib/bmw_watcher;->h:I

    rsub-int/lit8 v2, v2, 0x64

    int-to-long v2, v2

    mul-long/2addr v0, v2

    sget v2, Lccc71/bmw/lib/bmw_watcher;->h:I

    iget v3, p0, Lccc71/bmw/data/a;->b:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0

    .line 640
    :pswitch_1
    iget v2, p0, Lccc71/bmw/data/a;->b:I

    sget v3, Lccc71/bmw/lib/bmw_watcher;->h:I

    if-ge v2, v3, :cond_0

    .line 641
    sget v2, Lccc71/bmw/lib/bmw_watcher;->h:I

    rsub-int/lit8 v2, v2, 0x64

    int-to-long v2, v2

    mul-long/2addr v0, v2

    sget v2, Lccc71/bmw/lib/bmw_watcher;->h:I

    iget v3, p0, Lccc71/bmw/data/a;->b:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0

    .line 650
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 633
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static b(Landroid/content/Context;)V
    .locals 10
    .parameter

    .prologue
    const-wide/16 v8, 0x0

    const/4 v0, 0x0

    .line 298
    sget-object v1, Lccc71/bmw/lib/bmw_watcher;->ao:[Ljava/lang/String;

    array-length v2, v1

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_7

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lccc71/bmw/lib/bmw_watcher;->an:[Lccc71/bmw/lib/eg;

    array-length v2, v2

    :goto_1
    if-lt v0, v2, :cond_a

    const-string v0, "battery_widget_monitor"

    const-string v1, "Cannot find capacity file or matching model in internal DB"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :goto_2
    invoke-static {p0}, Lccc71/bmw/lib/bmw_watcher;->a(Landroid/content/Context;)V

    .line 301
    sget-object v1, Lccc71/bmw/lib/bmw_watcher;->B:Ljava/lang/Object;

    monitor-enter v1

    .line 303
    :try_start_0
    sget-object v0, Lccc71/bmw/lib/bmw_watcher;->C:Lccc71/bmw/lib/bmw_watcher;

    if-nez v0, :cond_6

    .line 305
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 306
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 307
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 309
    new-instance v4, Lccc71/bmw/lib/bmw_watcher;

    invoke-direct {v4}, Lccc71/bmw/lib/bmw_watcher;-><init>()V

    sput-object v4, Lccc71/bmw/lib/bmw_watcher;->C:Lccc71/bmw/lib/bmw_watcher;

    .line 310
    invoke-static {p0}, Lccc71/bmw/lib/bmw_watcher;->d(Landroid/content/Context;)V

    .line 314
    sget-object v4, Lccc71/bmw/lib/bmw_watcher;->C:Lccc71/bmw/lib/bmw_watcher;

    invoke-virtual {p0, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v4

    .line 315
    if-eqz v4, :cond_0

    .line 317
    const-string v0, "battery_widget_monitor"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Got initial Intent "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    sget-object v0, Lccc71/bmw/lib/bmw_watcher;->C:Lccc71/bmw/lib/bmw_watcher;

    invoke-virtual {v0, p0, v4}, Lccc71/bmw/lib/bmw_watcher;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 322
    const-wide/16 v5, 0x0

    sput-wide v5, Lccc71/bmw/lib/bmw_watcher;->E:J

    .line 327
    :cond_0
    new-instance v0, Lccc71/bmw/lib/bi;

    invoke-direct {v0, p0}, Lccc71/bmw/lib/bi;-><init>(Landroid/content/Context;)V

    .line 328
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Lccc71/bmw/lib/bi;->b(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 329
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_d

    .line 333
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/bmw/data/b;

    .line 334
    iget v5, v0, Lccc71/bmw/data/b;->b:I

    sput v5, Lccc71/bmw/lib/bmw_watcher;->f:I

    .line 336
    if-nez v4, :cond_c

    .line 338
    const-string v4, "battery_widget_monitor"

    const-string v5, "Retrieving initial data from history!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget v4, v0, Lccc71/bmw/data/b;->c:I

    sput v4, Lccc71/bmw/lib/bmw_watcher;->h:I

    .line 341
    iget-byte v4, v0, Lccc71/bmw/data/b;->g:B

    sput v4, Lccc71/bmw/lib/bmw_watcher;->j:I

    .line 342
    iget v4, v0, Lccc71/bmw/data/b;->e:F

    sput v4, Lccc71/bmw/lib/bmw_watcher;->k:F

    .line 343
    iget v0, v0, Lccc71/bmw/data/b;->d:I

    sput v0, Lccc71/bmw/lib/bmw_watcher;->i:I

    .line 347
    const/4 v0, 0x0

    sput v0, Lccc71/bmw/lib/bmw_watcher;->f:I

    .line 349
    invoke-static {}, Lccc71/bmw/lib/bmw_watcher;->b()B

    move-result v0

    sput-byte v0, Lccc71/bmw/lib/bmw_watcher;->D:B

    .line 364
    :cond_1
    :goto_3
    sget-object v0, Lccc71/bmw/lib/bmw_watcher;->C:Lccc71/bmw/lib/bmw_watcher;

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 365
    sget-object v0, Lccc71/bmw/lib/bmw_watcher;->C:Lccc71/bmw/lib/bmw_watcher;

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 367
    invoke-static {}, Lccc71/utils/a/k;->a()Lccc71/utils/a/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccc71/utils/a/k;->c(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lccc71/bmw/lib/bmw_watcher;->c:Z

    .line 368
    invoke-static {}, Lccc71/utils/a/k;->a()Lccc71/utils/a/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccc71/utils/a/k;->d(Landroid/content/Context;)J

    move-result-wide v2

    sput-wide v2, Lccc71/bmw/lib/bmw_watcher;->a:J

    .line 369
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sput-wide v2, Lccc71/bmw/lib/bmw_watcher;->b:J

    .line 370
    sget-wide v2, Lccc71/bmw/lib/bmw_watcher;->a:J

    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->o(Landroid/content/Context;)I

    move-result v0

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_2

    sget-wide v2, Lccc71/bmw/lib/bmw_watcher;->a:J

    cmp-long v0, v2, v8

    if-nez v0, :cond_3

    sget-boolean v0, Lccc71/bmw/lib/bmw_watcher;->c:Z

    if-eqz v0, :cond_3

    .line 372
    :cond_2
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->o(Landroid/content/Context;)I

    move-result v0

    int-to-long v2, v0

    sput-wide v2, Lccc71/bmw/lib/bmw_watcher;->a:J

    .line 374
    :cond_3
    sget-boolean v0, Lccc71/bmw/lib/bmw_watcher;->c:Z

    if-nez v0, :cond_4

    .line 375
    const/4 v0, 0x1

    sput-boolean v0, Lccc71/bmw/lib/bmw_watcher;->d:Z

    .line 377
    :cond_4
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->a(Landroid/content/Context;)Lccc71/bmw/data/a;

    move-result-object v0

    .line 378
    iget v0, v0, Lccc71/bmw/data/a;->b:I

    const/16 v2, 0x64

    if-ne v0, v2, :cond_5

    .line 380
    const/4 v0, 0x1

    sput-boolean v0, Lccc71/bmw/lib/bmw_watcher;->U:Z

    .line 381
    const/4 v0, 0x1

    sput-boolean v0, Lccc71/bmw/lib/bmw_watcher;->V:Z

    .line 384
    :cond_5
    const-string v0, "battery_widget_monitor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Registered bmw_watcher (screen "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lccc71/bmw/lib/bmw_watcher;->c:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", since "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v3, Lccc71/bmw/lib/bmw_watcher;->a:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " seconds)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_6
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 298
    :cond_7
    new-instance v3, Ljava/io/File;

    sget-object v4, Lccc71/bmw/lib/bmw_watcher;->ao:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "battery_widget_monitor"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Capacity found in "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " file"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v5, Ljava/io/DataInputStream;

    invoke-direct {v5, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sput v6, Lccc71/bmw/lib/bmw_watcher;->g:I

    const v7, 0x7a120

    if-le v6, v7, :cond_8

    sget v6, Lccc71/bmw/lib/bmw_watcher;->g:I

    div-int/lit16 v6, v6, 0x3e8

    sput v6, Lccc71/bmw/lib/bmw_watcher;->g:I

    :cond_8
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V

    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v4

    const-string v4, "battery_widget_monitor"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Cannot read capacity file from "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_a
    sget-object v3, Lccc71/bmw/lib/bmw_watcher;->an:[Lccc71/bmw/lib/eg;

    aget-object v3, v3, v0

    iget-object v4, v3, Lccc71/bmw/lib/eg;->a:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    iget v0, v3, Lccc71/bmw/lib/eg;->b:I

    sput v0, Lccc71/bmw/lib/bmw_watcher;->g:I

    const-string v0, "battery_widget_monitor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot find capacity file, using internal DB value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lccc71/bmw/lib/bmw_watcher;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 353
    :cond_c
    :try_start_2
    sget v0, Lccc71/bmw/lib/bmw_watcher;->f:I

    if-gez v0, :cond_1

    sget v0, Lccc71/bmw/lib/bmw_watcher;->j:I

    if-eqz v0, :cond_1

    .line 354
    const/4 v0, 0x0

    sput v0, Lccc71/bmw/lib/bmw_watcher;->f:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3

    .line 301
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 359
    :cond_d
    const/4 v0, 0x0

    :try_start_3
    sput v0, Lccc71/bmw/lib/bmw_watcher;->h:I

    .line 360
    const/4 v0, 0x0

    sput v0, Lccc71/bmw/lib/bmw_watcher;->j:I

    .line 361
    invoke-static {}, Lccc71/bmw/lib/bmw_watcher;->b()B

    move-result v0

    sput-byte v0, Lccc71/bmw/lib/bmw_watcher;->D:B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_3
.end method

.method private static b(Lccc71/bmw/data/a;I)V
    .locals 13
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x0

    const-wide/high16 v8, 0x4069

    const-wide/16 v11, 0x3e8

    .line 676
    sget v0, Lccc71/bmw/lib/bmw_watcher;->h:I

    iget v1, p0, Lccc71/bmw/data/a;->b:I

    if-le v0, v1, :cond_0

    .line 678
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lccc71/bmw/data/a;->a:J

    sub-long/2addr v0, v2

    .line 679
    const-wide/32 v2, 0x927c0

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 716
    :cond_0
    :goto_0
    return-void

    .line 682
    :cond_1
    const-wide v2, 0x414b774000000000L

    sget v4, Lccc71/bmw/lib/bmw_watcher;->h:I

    iget v5, p0, Lccc71/bmw/data/a;->b:I

    sub-int/2addr v4, v5

    int-to-double v4, v4

    mul-double/2addr v2, v4

    long-to-double v4, v0

    div-double/2addr v2, v4

    .line 683
    const-wide/16 v4, 0x0

    cmpg-double v4, v2, v4

    if-ltz v4, :cond_0

    .line 686
    sget v4, Lccc71/bmw/lib/bmw_watcher;->h:I

    iget v5, p0, Lccc71/bmw/data/a;->b:I

    sub-int/2addr v4, v5

    int-to-double v4, v4

    sub-double v4, v8, v4

    div-double/2addr v4, v8

    .line 687
    sget v6, Lccc71/bmw/lib/bmw_watcher;->h:I

    iget v7, p0, Lccc71/bmw/data/a;->b:I

    sub-int/2addr v6, v7

    int-to-double v6, v6

    div-double/2addr v6, v8

    .line 689
    const/4 v8, 0x1

    if-ne p1, v8, :cond_3

    .line 691
    iget v8, p0, Lccc71/bmw/data/a;->e:F

    cmpl-float v8, v8, v10

    if-eqz v8, :cond_2

    .line 693
    const-string v8, "battery_widget_monitor"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "AC0 - "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, p0, Lccc71/bmw/data/a;->b:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "=>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lccc71/bmw/lib/bmw_watcher;->h:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " since "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    div-long/2addr v0, v11

    invoke-static {v0, v1}, Lccc71/utils/al;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    iget v0, p0, Lccc71/bmw/data/a;->e:F

    float-to-double v0, v0

    mul-double/2addr v0, v4

    mul-double/2addr v2, v6

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lccc71/bmw/data/a;->e:F

    goto :goto_0

    .line 698
    :cond_2
    const-string v4, "battery_widget_monitor"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "AC - "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lccc71/bmw/data/a;->b:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lccc71/bmw/lib/bmw_watcher;->h:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " since "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    div-long/2addr v0, v11

    invoke-static {v0, v1}, Lccc71/utils/al;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    double-to-float v0, v2

    iput v0, p0, Lccc71/bmw/data/a;->e:F

    goto/16 :goto_0

    .line 702
    :cond_3
    const/4 v8, 0x2

    if-ne p1, v8, :cond_0

    .line 704
    iget v8, p0, Lccc71/bmw/data/a;->d:F

    cmpl-float v8, v8, v10

    if-eqz v8, :cond_4

    .line 706
    const-string v8, "battery_widget_monitor"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "USB0 - "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, p0, Lccc71/bmw/data/a;->b:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "=>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lccc71/bmw/lib/bmw_watcher;->h:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " since "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    div-long/2addr v0, v11

    invoke-static {v0, v1}, Lccc71/utils/al;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    iget v0, p0, Lccc71/bmw/data/a;->d:F

    float-to-double v0, v0

    mul-double/2addr v0, v4

    mul-double/2addr v2, v6

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lccc71/bmw/data/a;->d:F

    goto/16 :goto_0

    .line 711
    :cond_4
    const-string v4, "battery_widget_monitor"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "USB - "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lccc71/bmw/data/a;->b:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lccc71/bmw/lib/bmw_watcher;->h:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " since "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    div-long/2addr v0, v11

    invoke-static {v0, v1}, Lccc71/utils/al;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    double-to-float v0, v2

    iput v0, p0, Lccc71/bmw/data/a;->d:F

    goto/16 :goto_0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 391
    sget-object v1, Lccc71/bmw/lib/bmw_watcher;->B:Ljava/lang/Object;

    monitor-enter v1

    .line 393
    :try_start_0
    sget-object v0, Lccc71/bmw/lib/bmw_watcher;->C:Lccc71/bmw/lib/bmw_watcher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 397
    :try_start_1
    sget-object v0, Lccc71/bmw/lib/bmw_watcher;->C:Lccc71/bmw/lib/bmw_watcher;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 398
    const/4 v0, 0x0

    sput-object v0, Lccc71/bmw/lib/bmw_watcher;->C:Lccc71/bmw/lib/bmw_watcher;

    .line 399
    const-string v0, "battery_widget_monitor"

    const-string v2, "UNregistered bmw_watcher"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 391
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    return-void

    .line 401
    :catch_0
    move-exception v0

    .line 403
    const-string v2, "battery_widget_monitor"

    const-string v3, "Could not unregister bmw_watcher"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 391
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static c(Lccc71/bmw/data/a;)V
    .locals 11
    .parameter

    .prologue
    const-wide/16 v9, 0x3e8

    const-wide/high16 v7, 0x4069

    .line 720
    sget v0, Lccc71/bmw/lib/bmw_watcher;->h:I

    iget v1, p0, Lccc71/bmw/data/a;->b:I

    if-eq v0, v1, :cond_0

    .line 722
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lccc71/bmw/data/a;->a:J

    sub-long/2addr v0, v2

    .line 723
    const-wide/32 v2, 0x927c0

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 743
    :cond_0
    :goto_0
    return-void

    .line 726
    :cond_1
    const-wide v2, 0x414b774000000000L

    iget v4, p0, Lccc71/bmw/data/a;->b:I

    sget v5, Lccc71/bmw/lib/bmw_watcher;->h:I

    sub-int/2addr v4, v5

    int-to-double v4, v4

    mul-double/2addr v2, v4

    long-to-double v4, v0

    div-double/2addr v2, v4

    .line 727
    const-wide/16 v4, 0x0

    cmpg-double v4, v2, v4

    if-ltz v4, :cond_0

    .line 730
    iget v4, p0, Lccc71/bmw/data/a;->f:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_2

    .line 732
    const-string v4, "battery_widget_monitor"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "BAT0 - "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lccc71/bmw/data/a;->b:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lccc71/bmw/lib/bmw_watcher;->h:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " since "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    div-long/2addr v0, v9

    invoke-static {v0, v1}, Lccc71/utils/al;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    iget v0, p0, Lccc71/bmw/data/a;->b:I

    sget v1, Lccc71/bmw/lib/bmw_watcher;->h:I

    sub-int/2addr v0, v1

    int-to-double v0, v0

    sub-double v0, v7, v0

    div-double/2addr v0, v7

    .line 734
    iget v4, p0, Lccc71/bmw/data/a;->b:I

    sget v5, Lccc71/bmw/lib/bmw_watcher;->h:I

    sub-int/2addr v4, v5

    int-to-double v4, v4

    div-double/2addr v4, v7

    .line 735
    iget v6, p0, Lccc71/bmw/data/a;->f:F

    float-to-double v6, v6

    mul-double/2addr v0, v6

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lccc71/bmw/data/a;->f:F

    goto :goto_0

    .line 739
    :cond_2
    const-string v4, "battery_widget_monitor"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "BAT - "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lccc71/bmw/data/a;->b:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lccc71/bmw/lib/bmw_watcher;->h:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " since "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    div-long/2addr v0, v9

    invoke-static {v0, v1}, Lccc71/utils/al;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    double-to-float v0, v2

    iput v0, p0, Lccc71/bmw/data/a;->f:F

    goto/16 :goto_0
.end method

.method static c()Z
    .locals 1

    .prologue
    .line 273
    sget-object v0, Lccc71/bmw/lib/bmw_watcher;->C:Lccc71/bmw/lib/bmw_watcher;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d()I
    .locals 2

    .prologue
    .line 585
    sget v0, Lccc71/bmw/lib/bmw_watcher;->j:I

    packed-switch v0, :pswitch_data_0

    .line 593
    sget v0, Lccc71/bmw/lib/bmw_watcher;->f:I

    if-gez v0, :cond_0

    .line 594
    sget v0, Lccc71/bmw/lib/bmw_watcher;->h:I

    sget v1, Lccc71/bmw/lib/bmw_watcher;->m:I

    mul-int/2addr v0, v1

    sget v1, Lccc71/bmw/lib/bmw_watcher;->f:I

    div-int/2addr v0, v1

    mul-int/lit8 v0, v0, -0x24

    .line 598
    :goto_0
    return v0

    .line 589
    :pswitch_0
    sget v0, Lccc71/bmw/lib/bmw_watcher;->f:I

    if-lez v0, :cond_0

    .line 590
    sget v0, Lccc71/bmw/lib/bmw_watcher;->h:I

    rsub-int/lit8 v0, v0, 0x64

    sget v1, Lccc71/bmw/lib/bmw_watcher;->m:I

    mul-int/2addr v0, v1

    sget v1, Lccc71/bmw/lib/bmw_watcher;->f:I

    div-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x24

    goto :goto_0

    .line 598
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 585
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static d(Landroid/content/Context;)V
    .locals 9
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 411
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->w(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_watcher;->P:Ljava/lang/String;

    .line 412
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->x(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_watcher;->Q:Ljava/lang/String;

    .line 413
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_watcher;->R:Ljava/lang/String;

    .line 414
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->C(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_watcher;->S:Ljava/lang/String;

    .line 415
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->z(Landroid/content/Context;)I

    move-result v0

    sput v0, Lccc71/bmw/lib/bmw_watcher;->Z:I

    .line 416
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->A(Landroid/content/Context;)I

    move-result v0

    sput v0, Lccc71/bmw/lib/bmw_watcher;->aa:I

    .line 417
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->D(Landroid/content/Context;)I

    move-result v0

    sput v0, Lccc71/bmw/lib/bmw_watcher;->ab:I

    .line 418
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->d(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lccc71/bmw/lib/bmw_watcher;->w:Z

    .line 419
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->g(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lccc71/bmw/lib/bmw_watcher;->t:Z

    .line 420
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->e(Landroid/content/Context;)I

    move-result v0

    sput v0, Lccc71/bmw/lib/bmw_watcher;->u:I

    .line 421
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->f(Landroid/content/Context;)I

    move-result v0

    sput v0, Lccc71/bmw/lib/bmw_watcher;->v:I

    .line 423
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->af(Landroid/content/Context;)I

    move-result v0

    sput v0, Lccc71/bmw/lib/bmw_watcher;->I:I

    .line 424
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->ag(Landroid/content/Context;)I

    move-result v0

    sput v0, Lccc71/bmw/lib/bmw_watcher;->ac:I

    .line 425
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->ai(Landroid/content/Context;)I

    move-result v0

    sput v0, Lccc71/bmw/lib/bmw_watcher;->ad:I

    .line 426
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->m(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lccc71/bmw/lib/bmw_watcher;->x:Z

    .line 428
    sget v0, Lccc71/bmw/lib/g;->bO:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccc71/utils/al;->a:Ljava/lang/String;

    .line 429
    sget v0, Lccc71/bmw/lib/g;->bZ:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccc71/utils/al;->b:Ljava/lang/String;

    .line 430
    sget v0, Lccc71/bmw/lib/g;->ce:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccc71/utils/al;->c:Ljava/lang/String;

    .line 432
    sget v0, Lccc71/bmw/lib/g;->bX:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_watcher;->ae:Ljava/lang/String;

    .line 433
    sget v0, Lccc71/bmw/lib/g;->cz:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_watcher;->af:Ljava/lang/String;

    .line 434
    sget v0, Lccc71/bmw/lib/g;->cB:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_watcher;->ag:Ljava/lang/String;

    .line 435
    sget v0, Lccc71/bmw/lib/g;->cA:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_watcher;->ah:Ljava/lang/String;

    .line 437
    sget-object v0, Lccc71/bmw/lib/bmw_watcher;->P:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lccc71/bmw/lib/bmw_watcher;->Q:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lccc71/bmw/lib/bmw_watcher;->R:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lccc71/bmw/lib/bmw_watcher;->S:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_0
    sput-boolean v0, Lccc71/bmw/lib/bmw_watcher;->T:Z

    .line 439
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->s(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lccc71/bmw/lib/bmw_watcher;->J:Z

    .line 440
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->v(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lccc71/bmw/lib/bmw_watcher;->K:Z

    .line 441
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->j(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lccc71/bmw/lib/bmw_watcher;->e:Z

    .line 442
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->G(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lccc71/bmw/lib/bmw_watcher;->L:Z

    .line 443
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->H(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lccc71/bmw/lib/bmw_watcher;->M:Z

    .line 445
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->p(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_1
    sput-boolean v0, Lccc71/bmw/lib/bmw_watcher;->H:Z

    .line 447
    sget-object v0, Lccc71/bmw/lib/bmw_watcher;->ak:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    .line 448
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    sput-object v0, Lccc71/bmw/lib/bmw_watcher;->ak:Landroid/app/NotificationManager;

    .line 450
    :cond_0
    sget-boolean v0, Lccc71/bmw/lib/bmw_watcher;->N:Z

    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->t(Landroid/content/Context;)Z

    move-result v3

    if-ne v0, v3, :cond_1

    sget-object v0, Lccc71/bmw/lib/bmw_watcher;->O:Ljava/lang/String;

    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 452
    :cond_1
    sget-object v0, Lccc71/bmw/lib/bmw_watcher;->ak:Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 454
    sget-object v0, Lccc71/bmw/lib/bmw_watcher;->O:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lccc71/bmw/lib/bmw_watcher;->O:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 456
    const-string v0, "battery_widget_monitor"

    const-string v3, "Cancelling external notifications"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    sget-object v0, Lccc71/bmw/lib/bmw_watcher;->O:Ljava/lang/String;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 460
    array-length v4, v3

    move v0, v1

    .line 461
    :goto_2
    if-lt v0, v4, :cond_6

    .line 471
    :cond_2
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->t(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lccc71/bmw/lib/bmw_watcher;->N:Z

    .line 472
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_watcher;->O:Ljava/lang/String;

    .line 474
    sget-boolean v0, Lccc71/bmw/lib/bmw_watcher;->N:Z

    if-eqz v0, :cond_3

    sget v0, Lccc71/bmw/lib/bmw_watcher;->h:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_3

    .line 476
    invoke-static {p0}, Lccc71/bmw/lib/bmw_watcher;->h(Landroid/content/Context;)V

    .line 479
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 480
    invoke-static {p0, v0}, Lccc71/bmw/lib/bmw_settings;->a(Landroid/content/Context;Ljava/lang/StringBuilder;)Lccc71/bmw/lib/eh;

    move-result-object v3

    .line 481
    sget-object v4, Lccc71/bmw/lib/eh;->a:Lccc71/bmw/lib/eh;

    if-eq v3, v4, :cond_7

    .line 483
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_watcher;->A:Ljava/lang/String;

    .line 484
    const-string v0, "battery_widget_monitor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "mA retrieval overridden:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lccc71/bmw/lib/bmw_watcher;->A:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    invoke-static {}, Lccc71/bmw/lib/bmw_watcher;->j()[I

    move-result-object v0

    invoke-virtual {v3}, Lccc71/bmw/lib/eh;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 536
    :pswitch_0
    new-instance v0, Lccc71/bmw/data/readers/bmw_reader_estimates;

    invoke-direct {v0}, Lccc71/bmw/data/readers/bmw_reader_estimates;-><init>()V

    sput-object v0, Lccc71/bmw/lib/bmw_watcher;->z:Lccc71/bmw/data/readers/a;

    .line 537
    sput-boolean v1, Lccc71/bmw/lib/bmw_watcher;->x:Z

    .line 545
    :goto_3
    sget-object v0, Lccc71/bmw/lib/bmw_watcher;->z:Lccc71/bmw/data/readers/a;

    invoke-virtual {v0}, Lccc71/bmw/data/readers/a;->b()Z

    move-result v0

    sput-boolean v0, Lccc71/bmw/lib/bmw_watcher;->y:Z

    .line 546
    return-void

    :cond_4
    move v0, v2

    .line 437
    goto/16 :goto_0

    :cond_5
    move v0, v2

    .line 445
    goto/16 :goto_1

    .line 463
    :cond_6
    aget-object v5, v3, v0

    .line 465
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 466
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ".bmw_notification"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 467
    invoke-virtual {p0, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 461
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 488
    :pswitch_1
    new-instance v0, Lccc71/bmw/data/readers/bmw_reader_smemtext;

    sget-object v1, Lccc71/bmw/lib/bmw_watcher;->A:Ljava/lang/String;

    invoke-direct {v0, v1}, Lccc71/bmw/data/readers/bmw_reader_smemtext;-><init>(Ljava/lang/String;)V

    sput-object v0, Lccc71/bmw/lib/bmw_watcher;->z:Lccc71/bmw/data/readers/a;

    goto :goto_3

    .line 492
    :pswitch_2
    new-instance v0, Lccc71/bmw/data/readers/bmw_reader_battattrtext;

    sget-object v1, Lccc71/bmw/lib/bmw_watcher;->A:Ljava/lang/String;

    invoke-direct {v0, v1}, Lccc71/bmw/data/readers/bmw_reader_battattrtext;-><init>(Ljava/lang/String;)V

    sput-object v0, Lccc71/bmw/lib/bmw_watcher;->z:Lccc71/bmw/data/readers/a;

    goto :goto_3

    .line 496
    :pswitch_3
    new-instance v0, Lccc71/bmw/data/readers/bmw_reader_battattrtext_qth;

    sget-object v1, Lccc71/bmw/lib/bmw_watcher;->A:Ljava/lang/String;

    invoke-direct {v0, v1}, Lccc71/bmw/data/readers/bmw_reader_battattrtext_qth;-><init>(Ljava/lang/String;)V

    sput-object v0, Lccc71/bmw/lib/bmw_watcher;->z:Lccc71/bmw/data/readers/a;

    goto :goto_3

    .line 500
    :pswitch_4
    new-instance v0, Lccc71/bmw/data/readers/bmw_reader_smemevaltext;

    sget-object v1, Lccc71/bmw/lib/bmw_watcher;->A:Ljava/lang/String;

    invoke-direct {v0, v1}, Lccc71/bmw/data/readers/bmw_reader_smemevaltext;-><init>(Ljava/lang/String;)V

    sput-object v0, Lccc71/bmw/lib/bmw_watcher;->z:Lccc71/bmw/data/readers/a;

    goto :goto_3

    .line 504
    :pswitch_5
    new-instance v0, Lccc71/bmw/data/readers/bmw_reader_smemtext_pdm;

    sget-object v1, Lccc71/bmw/lib/bmw_watcher;->A:Ljava/lang/String;

    invoke-direct {v0, v1}, Lccc71/bmw/data/readers/bmw_reader_smemtext_pdm;-><init>(Ljava/lang/String;)V

    sput-object v0, Lccc71/bmw/lib/bmw_watcher;->z:Lccc71/bmw/data/readers/a;

    goto :goto_3

    .line 508
    :pswitch_6
    new-instance v0, Lccc71/bmw/data/readers/bmw_reader_smemtext_pdm100;

    sget-object v1, Lccc71/bmw/lib/bmw_watcher;->A:Ljava/lang/String;

    invoke-direct {v0, v1}, Lccc71/bmw/data/readers/bmw_reader_smemtext_pdm100;-><init>(Ljava/lang/String;)V

    sput-object v0, Lccc71/bmw/lib/bmw_watcher;->z:Lccc71/bmw/data/readers/a;

    goto :goto_3

    .line 512
    :pswitch_7
    new-instance v0, Lccc71/bmw/data/readers/bmw_reader_battattrtext_pdm;

    sget-object v1, Lccc71/bmw/lib/bmw_watcher;->A:Ljava/lang/String;

    invoke-direct {v0, v1}, Lccc71/bmw/data/readers/bmw_reader_battattrtext_pdm;-><init>(Ljava/lang/String;)V

    sput-object v0, Lccc71/bmw/lib/bmw_watcher;->z:Lccc71/bmw/data/readers/a;

    goto :goto_3

    .line 516
    :pswitch_8
    new-instance v0, Lccc71/bmw/data/readers/bmw_reader_battattrtext_reverse_ua;

    sget-object v1, Lccc71/bmw/lib/bmw_watcher;->A:Ljava/lang/String;

    invoke-direct {v0, v1}, Lccc71/bmw/data/readers/bmw_reader_battattrtext_reverse_ua;-><init>(Ljava/lang/String;)V

    sput-object v0, Lccc71/bmw/lib/bmw_watcher;->z:Lccc71/bmw/data/readers/a;

    goto/16 :goto_3

    .line 520
    :pswitch_9
    new-instance v0, Lccc71/bmw/data/readers/bmw_reader_smemevaltext_ratio085;

    sget-object v1, Lccc71/bmw/lib/bmw_watcher;->A:Ljava/lang/String;

    invoke-direct {v0, v1}, Lccc71/bmw/data/readers/bmw_reader_smemevaltext_ratio085;-><init>(Ljava/lang/String;)V

    sput-object v0, Lccc71/bmw/lib/bmw_watcher;->z:Lccc71/bmw/data/readers/a;

    goto/16 :goto_3

    .line 524
    :pswitch_a
    new-instance v0, Lccc71/bmw/data/readers/bmw_reader_specificpath;

    sget-object v1, Lccc71/bmw/lib/bmw_watcher;->A:Ljava/lang/String;

    invoke-direct {v0, v1}, Lccc71/bmw/data/readers/bmw_reader_specificpath;-><init>(Ljava/lang/String;)V

    sput-object v0, Lccc71/bmw/lib/bmw_watcher;->z:Lccc71/bmw/data/readers/a;

    goto/16 :goto_3

    .line 528
    :pswitch_b
    new-instance v0, Lccc71/bmw/data/readers/bmw_reader_specificpathma;

    sget-object v1, Lccc71/bmw/lib/bmw_watcher;->A:Ljava/lang/String;

    invoke-direct {v0, v1}, Lccc71/bmw/data/readers/bmw_reader_specificpathma;-><init>(Ljava/lang/String;)V

    sput-object v0, Lccc71/bmw/lib/bmw_watcher;->z:Lccc71/bmw/data/readers/a;

    goto/16 :goto_3

    .line 532
    :pswitch_c
    new-instance v0, Lccc71/bmw/data/readers/bmw_reader_chargercurrent;

    sget-object v1, Lccc71/bmw/lib/bmw_watcher;->A:Ljava/lang/String;

    invoke-direct {v0, v1}, Lccc71/bmw/data/readers/bmw_reader_chargercurrent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lccc71/bmw/lib/bmw_watcher;->z:Lccc71/bmw/data/readers/a;

    goto/16 :goto_3

    .line 543
    :cond_7
    const-string v0, "battery_widget_monitor"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "BMW on Build Model:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "mb525"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "mb526"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "mb855"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "mb860"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "me860"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "droid2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "droid3"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "droid x2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "droid razr"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "droid bionic"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "motoa953"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "xt910"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "droid pro"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_8
    const-string v3, "droid razr hd"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    sput-boolean v2, Lccc71/bmw/lib/bmw_watcher;->w:Z

    :cond_9
    const-string v2, "desire hd"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "desirehd"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "pg41200"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "001ht"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "inspire"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_a
    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/power_supply/battery/batt_current"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v0, "battery_widget_monitor"

    const-string v1, "Consumption stored in batt_current (Desire HD/Z)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "/sys/class/power_supply/battery/batt_current"

    sput-object v0, Lccc71/bmw/lib/bmw_watcher;->A:Ljava/lang/String;

    new-instance v0, Lccc71/bmw/data/readers/bmw_reader_specificpathma;

    sget-object v1, Lccc71/bmw/lib/bmw_watcher;->A:Ljava/lang/String;

    invoke-direct {v0, v1}, Lccc71/bmw/data/readers/bmw_reader_specificpathma;-><init>(Ljava/lang/String;)V

    sput-object v0, Lccc71/bmw/lib/bmw_watcher;->z:Lccc71/bmw/data/readers/a;

    goto/16 :goto_3

    :cond_b
    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/devices/platform/ds2784-battery/getcurrent"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v0, "battery_widget_monitor"

    const-string v1, "Consumption stored in getcurrent (CyanogenMod)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "/sys/devices/platform/ds2784-battery/getcurrent"

    sput-object v0, Lccc71/bmw/lib/bmw_watcher;->A:Ljava/lang/String;

    new-instance v0, Lccc71/bmw/data/readers/bmw_reader_specificpath;

    sget-object v1, Lccc71/bmw/lib/bmw_watcher;->A:Ljava/lang/String;

    invoke-direct {v0, v1}, Lccc71/bmw/data/readers/bmw_reader_specificpath;-><init>(Ljava/lang/String;)V

    sput-object v0, Lccc71/bmw/lib/bmw_watcher;->z:Lccc71/bmw/data/readers/a;

    goto/16 :goto_3

    :cond_c
    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/devices/platform/i2c-adapter/i2c-0/0-0036/power_supply/ds2746-battery/current_now"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v0, "battery_widget_monitor"

    const-string v1, "Consumption stored in ds2746-battery/current_now"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "/sys/devices/platform/i2c-adapter/i2c-0/0-0036/power_supply/ds2746-battery/current_now"

    sput-object v0, Lccc71/bmw/lib/bmw_watcher;->A:Ljava/lang/String;

    new-instance v0, Lccc71/bmw/data/readers/bmw_reader_specificpathma;

    sget-object v1, Lccc71/bmw/lib/bmw_watcher;->A:Ljava/lang/String;

    invoke-direct {v0, v1}, Lccc71/bmw/data/readers/bmw_reader_specificpathma;-><init>(Ljava/lang/String;)V

    sput-object v0, Lccc71/bmw/lib/bmw_watcher;->z:Lccc71/bmw/data/readers/a;

    goto/16 :goto_3

    :cond_d
    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/devices/platform/i2c-adapter/i2c-0/0-0036/power_supply/battery/current_now"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v0, "battery_widget_monitor"

    const-string v1, "Consumption stored in 0036/current_now"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "/sys/devices/platform/i2c-adapter/i2c-0/0-0036/power_supply/battery/current_now"

    sput-object v0, Lccc71/bmw/lib/bmw_watcher;->A:Ljava/lang/String;

    new-instance v0, Lccc71/bmw/data/readers/bmw_reader_specificpathma;

    sget-object v1, Lccc71/bmw/lib/bmw_watcher;->A:Ljava/lang/String;

    invoke-direct {v0, v1}, Lccc71/bmw/data/readers/bmw_reader_specificpathma;-><init>(Ljava/lang/String;)V

    sput-object v0, Lccc71/bmw/lib/bmw_watcher;->z:Lccc71/bmw/data/readers/a;

    goto/16 :goto_3

    :cond_e
    const-string v2, "flyer"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_15

    const-string v2, "htc one v"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_15

    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/power_supply/battery/smem_text"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_15

    const-string v1, "battery_widget_monitor"

    const-string v2, "Consumption stored in smem_text"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "/sys/class/power_supply/battery/smem_text"

    sput-object v1, Lccc71/bmw/lib/bmw_watcher;->A:Ljava/lang/String;

    const-string v1, "adr6400l"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "adr6300"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "adr6350"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "desire s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "desire z"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "legend"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "hero"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "htc liberty"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "pur3 a05p"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "incredible s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "pg06100"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    :cond_f
    new-instance v0, Lccc71/bmw/data/readers/bmw_reader_battattrtext;

    sget-object v1, Lccc71/bmw/lib/bmw_watcher;->A:Ljava/lang/String;

    invoke-direct {v0, v1}, Lccc71/bmw/data/readers/bmw_reader_battattrtext;-><init>(Ljava/lang/String;)V

    sput-object v0, Lccc71/bmw/lib/bmw_watcher;->z:Lccc71/bmw/data/readers/a;

    goto/16 :goto_3

    :cond_10
    const-string v1, "pc36100"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    new-instance v0, Lccc71/bmw/data/readers/bmw_reader_battattrtext_pdm;

    sget-object v1, Lccc71/bmw/lib/bmw_watcher;->A:Ljava/lang/String;

    invoke-direct {v0, v1}, Lccc71/bmw/data/readers/bmw_reader_battattrtext_pdm;-><init>(Ljava/lang/String;)V

    sput-object v0, Lccc71/bmw/lib/bmw_watcher;->z:Lccc71/bmw/data/readers/a;

    goto/16 :goto_3

    :cond_11
    const-string v1, "chacha"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    new-instance v0, Lccc71/bmw/data/readers/bmw_reader_smemevaltext_ratio085;

    sget-object v1, Lccc71/bmw/lib/bmw_watcher;->A:Ljava/lang/String;

    invoke-direct {v0, v1}, Lccc71/bmw/data/readers/bmw_reader_smemevaltext_ratio085;-><init>(Ljava/lang/String;)V

    sput-object v0, Lccc71/bmw/lib/bmw_watcher;->z:Lccc71/bmw/data/readers/a;

    goto/16 :goto_3

    :cond_12
    const-string v1, "a510e"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    const-string v1, "a510b"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    const-string v1, "salsa c510e"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_13
    new-instance v0, Lccc71/bmw/data/readers/bmw_reader_smemevaltext;

    sget-object v1, Lccc71/bmw/lib/bmw_watcher;->A:Ljava/lang/String;

    invoke-direct {v0, v1}, Lccc71/bmw/data/readers/bmw_reader_smemevaltext;-><init>(Ljava/lang/String;)V

    sput-object v0, Lccc71/bmw/lib/bmw_watcher;->z:Lccc71/bmw/data/readers/a;

    goto/16 :goto_3

    :cond_14
    new-instance v0, Lccc71/bmw/data/readers/bmw_reader_smemtext;

    sget-object v1, Lccc71/bmw/lib/bmw_watcher;->A:Ljava/lang/String;

    invoke-direct {v0, v1}, Lccc71/bmw/data/readers/bmw_reader_smemtext;-><init>(Ljava/lang/String;)V

    sput-object v0, Lccc71/bmw/lib/bmw_watcher;->z:Lccc71/bmw/data/readers/a;

    goto/16 :goto_3

    :cond_15
    const-string v2, "pg86100"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_16

    const-string v2, "evo 3d"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_16

    const-string v2, "evo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    const-string v2, "evo 4g lte"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    const-string v2, "shooteru"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_16

    const-string v2, "x515m"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_16

    const-string v2, "adr6425lvw"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_16

    const-string v2, "adr6410lvw"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_19

    :cond_16
    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/power_supply/battery/batt_attr_text"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_19

    const-string v2, "battery_widget_monitor"

    const-string v3, "Consumption stored in batt_attr_text (qth)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "/sys/class/power_supply/battery/batt_attr_text"

    sput-object v2, Lccc71/bmw/lib/bmw_watcher;->A:Ljava/lang/String;

    const-string v2, "evo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    const-string v2, "evo 4g lte"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    const-string v2, "adr6410lvw"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_17
    new-instance v0, Lccc71/bmw/data/readers/bmw_reader_battattrtext_reverse_ua;

    sget-object v2, Lccc71/bmw/lib/bmw_watcher;->A:Ljava/lang/String;

    invoke-direct {v0, v2}, Lccc71/bmw/data/readers/bmw_reader_battattrtext_reverse_ua;-><init>(Ljava/lang/String;)V

    sput-object v0, Lccc71/bmw/lib/bmw_watcher;->z:Lccc71/bmw/data/readers/a;

    :goto_4
    sput-boolean v1, Lccc71/bmw/lib/bmw_watcher;->x:Z

    goto/16 :goto_3

    :cond_18
    new-instance v0, Lccc71/bmw/data/readers/bmw_reader_battattrtext_qth;

    sget-object v2, Lccc71/bmw/lib/bmw_watcher;->A:Ljava/lang/String;

    invoke-direct {v0, v2}, Lccc71/bmw/data/readers/bmw_reader_battattrtext_qth;-><init>(Ljava/lang/String;)V

    sput-object v0, Lccc71/bmw/lib/bmw_watcher;->z:Lccc71/bmw/data/readers/a;

    goto :goto_4

    :cond_19
    const-string v2, "t-mobile mytouch 3g"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string v2, "sensation"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string v2, "ideos"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string v2, "mi320"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string v2, "c8600"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string v2, "dronix"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string v2, "vodafone 858"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string v2, "vodafone 845"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string v2, "huawei ascend"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string v2, "mytouch_4g_slide"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string v2, "u8150-d"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string v2, "u8180"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string v2, "em73_sis_all"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string v2, "htc one x"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string v2, "htc one v"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string v2, "htc vle_u"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string v2, "htc one s"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string v2, "htc_jewel"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string v2, "htc-z710a"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1c

    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/power_supply/battery/batt_current"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1c

    const-string v1, "battery_widget_monitor"

    const-string v2, "Consumption stored in batt_current (Desire HD/Z)"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "/sys/class/power_supply/battery/batt_current"

    sput-object v1, Lccc71/bmw/lib/bmw_watcher;->A:Ljava/lang/String;

    const-string v1, "sapphire/dream"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    new-instance v0, Lccc71/bmw/data/readers/bmw_reader_chargercurrent;

    sget-object v1, Lccc71/bmw/lib/bmw_watcher;->A:Ljava/lang/String;

    invoke-direct {v0, v1}, Lccc71/bmw/data/readers/bmw_reader_chargercurrent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lccc71/bmw/lib/bmw_watcher;->z:Lccc71/bmw/data/readers/a;

    goto/16 :goto_3

    :cond_1a
    const-string v1, "htc one s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    new-instance v0, Lccc71/bmw/data/readers/bmw_reader_reverse_ua;

    sget-object v1, Lccc71/bmw/lib/bmw_watcher;->A:Ljava/lang/String;

    invoke-direct {v0, v1}, Lccc71/bmw/data/readers/bmw_reader_reverse_ua;-><init>(Ljava/lang/String;)V

    sput-object v0, Lccc71/bmw/lib/bmw_watcher;->z:Lccc71/bmw/data/readers/a;

    goto/16 :goto_3

    :cond_1b
    new-instance v0, Lccc71/bmw/data/readers/bmw_reader_specificpathma;

    sget-object v1, Lccc71/bmw/lib/bmw_watcher;->A:Ljava/lang/String;

    invoke-direct {v0, v1}, Lccc71/bmw/data/readers/bmw_reader_specificpathma;-><init>(Ljava/lang/String;)V

    sput-object v0, Lccc71/bmw/lib/bmw_watcher;->z:Lccc71/bmw/data/readers/a;

    goto/16 :goto_3

    :cond_1c
    const-string v2, "lg-p970"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_25

    const-string v2, "lg-ls855"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_25

    const-string v2, "lg-p720"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_25

    const-string v2, "vegacomb"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_25

    const-string v2, "lg Optimus m"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_25

    const-string v2, "ls670"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_25

    const-string v2, "ph39100"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_25

    const-string v2, "lge-su760"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_25

    const-string v2, "at100"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_25

    const-string v2, "xt320"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_25

    const-string v2, "gt-i9300"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_25

    const-string v2, "i9300"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_25

    const-string v2, "vtab1008"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_25

    const-string v2, "lg-p920"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_25

    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/power_supply/battery/current_now"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_25

    const-string v1, "battery_widget_monitor"

    const-string v2, "Consumption stored in current_now"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "/sys/class/power_supply/battery/current_now"

    sput-object v1, Lccc71/bmw/lib/bmw_watcher;->A:Ljava/lang/String;

    const-string v1, "vm670"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1d

    const-string v1, "lg-ms690"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1e

    :cond_1d
    new-instance v0, Lccc71/bmw/data/readers/bmw_reader_chargercurrent;

    sget-object v1, Lccc71/bmw/lib/bmw_watcher;->A:Ljava/lang/String;

    invoke-direct {v0, v1}, Lccc71/bmw/data/readers/bmw_reader_chargercurrent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lccc71/bmw/lib/bmw_watcher;->z:Lccc71/bmw/data/readers/a;

    goto/16 :goto_3

    :cond_1e
    const-string v1, "advent vega"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    const-string v1, "m9"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    const-string v1, "motwx435kt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    const-string v1, "csl-mi410"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    const-string v1, "gt-p6800"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    const-string v1, "triumph"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    const-string v1, "huawei-u8850"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    const-string v1, "sh8188u"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_20

    :cond_1f
    new-instance v0, Lccc71/bmw/data/readers/bmw_reader_specificpathma;

    sget-object v1, Lccc71/bmw/lib/bmw_watcher;->A:Ljava/lang/String;

    invoke-direct {v0, v1}, Lccc71/bmw/data/readers/bmw_reader_specificpathma;-><init>(Ljava/lang/String;)V

    sput-object v0, Lccc71/bmw/lib/bmw_watcher;->z:Lccc71/bmw/data/readers/a;

    goto/16 :goto_3

    :cond_20
    const-string v1, "s_mp99"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    const-string v1, "t05a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    const-string v1, "3c97"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    const-string v1, "97fc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    const-string v1, "mid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    :cond_21
    new-instance v0, Lccc71/bmw/data/readers/bmw_reader_mp99;

    sget-object v1, Lccc71/bmw/lib/bmw_watcher;->A:Ljava/lang/String;

    invoke-direct {v0, v1}, Lccc71/bmw/data/readers/bmw_reader_mp99;-><init>(Ljava/lang/String;)V

    sput-object v0, Lccc71/bmw/lib/bmw_watcher;->z:Lccc71/bmw/data/readers/a;

    goto/16 :goto_3

    :cond_22
    const-string v1, "m802"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    new-instance v0, Lccc71/bmw/data/readers/bmw_reader_specificpath_m802;

    sget-object v1, Lccc71/bmw/lib/bmw_watcher;->A:Ljava/lang/String;

    invoke-direct {v0, v1}, Lccc71/bmw/data/readers/bmw_reader_specificpath_m802;-><init>(Ljava/lang/String;)V

    sput-object v0, Lccc71/bmw/lib/bmw_watcher;->z:Lccc71/bmw/data/readers/a;

    goto/16 :goto_3

    :cond_23
    const-string v1, "htc vle_u"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    new-instance v0, Lccc71/bmw/data/readers/bmw_reader_specificpath_htc_vle_u;

    sget-object v1, Lccc71/bmw/lib/bmw_watcher;->A:Ljava/lang/String;

    invoke-direct {v0, v1}, Lccc71/bmw/data/readers/bmw_reader_specificpath_htc_vle_u;-><init>(Ljava/lang/String;)V

    sput-object v0, Lccc71/bmw/lib/bmw_watcher;->z:Lccc71/bmw/data/readers/a;

    goto/16 :goto_3

    :cond_24
    new-instance v0, Lccc71/bmw/data/readers/bmw_reader_specificpath;

    sget-object v1, Lccc71/bmw/lib/bmw_watcher;->A:Ljava/lang/String;

    invoke-direct {v0, v1}, Lccc71/bmw/data/readers/bmw_reader_specificpath;-><init>(Ljava/lang/String;)V

    sput-object v0, Lccc71/bmw/lib/bmw_watcher;->z:Lccc71/bmw/data/readers/a;

    goto/16 :goto_3

    :cond_25
    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/power_supply/battery/batt_chg_current"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_26

    const-string v0, "battery_widget_monitor"

    const-string v1, "Consumption stored in batt_chg_current"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "/sys/class/power_supply/battery/batt_chg_current"

    sput-object v0, Lccc71/bmw/lib/bmw_watcher;->A:Ljava/lang/String;

    new-instance v0, Lccc71/bmw/data/readers/bmw_reader_chargercurrent;

    sget-object v1, Lccc71/bmw/lib/bmw_watcher;->A:Ljava/lang/String;

    invoke-direct {v0, v1}, Lccc71/bmw/data/readers/bmw_reader_chargercurrent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lccc71/bmw/lib/bmw_watcher;->z:Lccc71/bmw/data/readers/a;

    goto/16 :goto_3

    :cond_26
    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/power_supply/battery/charger_current"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_27

    const-string v0, "battery_widget_monitor"

    const-string v1, "Consumption stored in charger_current (Xperia X10)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "/sys/class/power_supply/battery/charger_current"

    sput-object v0, Lccc71/bmw/lib/bmw_watcher;->A:Ljava/lang/String;

    new-instance v0, Lccc71/bmw/data/readers/bmw_reader_chargercurrent;

    sget-object v1, Lccc71/bmw/lib/bmw_watcher;->A:Ljava/lang/String;

    invoke-direct {v0, v1}, Lccc71/bmw/data/readers/bmw_reader_chargercurrent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lccc71/bmw/lib/bmw_watcher;->z:Lccc71/bmw/data/readers/a;

    goto/16 :goto_3

    :cond_27
    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/power_supply/max17042-0/current_now"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_28

    const-string v0, "battery_widget_monitor"

    const-string v1, "Consumption stored in max17042-0/current_now"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "/sys/class/power_supply/max17042-0/current_now"

    sput-object v0, Lccc71/bmw/lib/bmw_watcher;->A:Ljava/lang/String;

    new-instance v0, Lccc71/bmw/data/readers/bmw_reader_specificpath;

    sget-object v1, Lccc71/bmw/lib/bmw_watcher;->A:Ljava/lang/String;

    invoke-direct {v0, v1}, Lccc71/bmw/data/readers/bmw_reader_specificpath;-><init>(Ljava/lang/String;)V

    sput-object v0, Lccc71/bmw/lib/bmw_watcher;->z:Lccc71/bmw/data/readers/a;

    goto/16 :goto_3

    :cond_28
    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/power_supply/bq27520/current_now"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_29

    const-string v0, "battery_widget_monitor"

    const-string v1, "Consumption stored in bq27520/current_now"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "/sys/class/power_supply/bq27520/current_now"

    sput-object v0, Lccc71/bmw/lib/bmw_watcher;->A:Ljava/lang/String;

    new-instance v0, Lccc71/bmw/data/readers/bmw_reader_specificpath;

    sget-object v1, Lccc71/bmw/lib/bmw_watcher;->A:Ljava/lang/String;

    invoke-direct {v0, v1}, Lccc71/bmw/data/readers/bmw_reader_specificpath;-><init>(Ljava/lang/String;)V

    sput-object v0, Lccc71/bmw/lib/bmw_watcher;->z:Lccc71/bmw/data/readers/a;

    goto/16 :goto_3

    :cond_29
    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/power_supply/battery/batt_attr_text"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_31

    const-string v1, "battery_widget_monitor"

    const-string v2, "Consumption stored in batt_attr_text"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "/sys/class/power_supply/battery/batt_attr_text"

    sput-object v1, Lccc71/bmw/lib/bmw_watcher;->A:Ljava/lang/String;

    const-string v1, "htc one xl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2a

    new-instance v0, Lccc71/bmw/data/readers/bmw_reader_battattrtext_reverse_ua;

    sget-object v1, Lccc71/bmw/lib/bmw_watcher;->A:Ljava/lang/String;

    invoke-direct {v0, v1}, Lccc71/bmw/data/readers/bmw_reader_battattrtext_reverse_ua;-><init>(Ljava/lang/String;)V

    sput-object v0, Lccc71/bmw/lib/bmw_watcher;->z:Lccc71/bmw/data/readers/a;

    goto/16 :goto_3

    :cond_2a
    const-string v1, "htc one x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2b

    const-string v1, "htc one v"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2d

    :cond_2b
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "evita"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    new-instance v0, Lccc71/bmw/data/readers/bmw_reader_battattrtext_reverse_ua;

    sget-object v1, Lccc71/bmw/lib/bmw_watcher;->A:Ljava/lang/String;

    invoke-direct {v0, v1}, Lccc71/bmw/data/readers/bmw_reader_battattrtext_reverse_ua;-><init>(Ljava/lang/String;)V

    sput-object v0, Lccc71/bmw/lib/bmw_watcher;->z:Lccc71/bmw/data/readers/a;

    goto/16 :goto_3

    :cond_2c
    new-instance v0, Lccc71/bmw/data/readers/bmw_reader_smemtext_pdm;

    sget-object v1, Lccc71/bmw/lib/bmw_watcher;->A:Ljava/lang/String;

    invoke-direct {v0, v1}, Lccc71/bmw/data/readers/bmw_reader_smemtext_pdm;-><init>(Ljava/lang/String;)V

    sput-object v0, Lccc71/bmw/lib/bmw_watcher;->z:Lccc71/bmw/data/readers/a;

    goto/16 :goto_3

    :cond_2d
    const-string v1, "sensation"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2e

    new-instance v0, Lccc71/bmw/data/readers/bmw_reader_smemtext_pdm100;

    sget-object v1, Lccc71/bmw/lib/bmw_watcher;->A:Ljava/lang/String;

    invoke-direct {v0, v1}, Lccc71/bmw/data/readers/bmw_reader_smemtext_pdm100;-><init>(Ljava/lang/String;)V

    sput-object v0, Lccc71/bmw/lib/bmw_watcher;->z:Lccc71/bmw/data/readers/a;

    goto/16 :goto_3

    :cond_2e
    const-string v1, "htc one s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2f

    const-string v1, "htc_jewel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_30

    :cond_2f
    new-instance v0, Lccc71/bmw/data/readers/bmw_reader_battattrtext_reverse_ua;

    sget-object v1, Lccc71/bmw/lib/bmw_watcher;->A:Ljava/lang/String;

    invoke-direct {v0, v1}, Lccc71/bmw/data/readers/bmw_reader_battattrtext_reverse_ua;-><init>(Ljava/lang/String;)V

    sput-object v0, Lccc71/bmw/lib/bmw_watcher;->z:Lccc71/bmw/data/readers/a;

    goto/16 :goto_3

    :cond_30
    new-instance v0, Lccc71/bmw/data/readers/bmw_reader_smemtext;

    sget-object v1, Lccc71/bmw/lib/bmw_watcher;->A:Ljava/lang/String;

    invoke-direct {v0, v1}, Lccc71/bmw/data/readers/bmw_reader_smemtext;-><init>(Ljava/lang/String;)V

    sput-object v0, Lccc71/bmw/lib/bmw_watcher;->z:Lccc71/bmw/data/readers/a;

    goto/16 :goto_3

    :cond_31
    const-string v2, "a500"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_32

    const-string v2, "a501"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_33

    :cond_32
    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/EcControl/BatCurrent"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_33

    const-string v0, "battery_widget_monitor"

    const-string v1, "Consumption stored in BatCurrent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "/sys/EcControl/BatCurrent"

    sput-object v0, Lccc71/bmw/lib/bmw_watcher;->A:Ljava/lang/String;

    new-instance v0, Lccc71/bmw/data/readers/bmw_reader_specificpathma;

    sget-object v1, Lccc71/bmw/lib/bmw_watcher;->A:Ljava/lang/String;

    invoke-direct {v0, v1}, Lccc71/bmw/data/readers/bmw_reader_specificpathma;-><init>(Ljava/lang/String;)V

    sput-object v0, Lccc71/bmw/lib/bmw_watcher;->z:Lccc71/bmw/data/readers/a;

    goto/16 :goto_3

    :cond_33
    const-string v2, "at100"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_34

    const-string v2, "thrive"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_34

    const-string v2, "gt-p31"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_34

    const-string v2, "gt-p51"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_37

    :cond_34
    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/power_supply/battery/current_avg"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_37

    const-string v1, "battery_widget_monitor"

    const-string v2, "Consumption stored in current_avg"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "/sys/class/power_supply/battery/current_avg"

    sput-object v1, Lccc71/bmw/lib/bmw_watcher;->A:Ljava/lang/String;

    const-string v1, "gt-p31"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_35

    const-string v1, "gt-p51"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_36

    :cond_35
    new-instance v0, Lccc71/bmw/data/readers/bmw_reader_specificpathma;

    sget-object v1, Lccc71/bmw/lib/bmw_watcher;->A:Ljava/lang/String;

    invoke-direct {v0, v1}, Lccc71/bmw/data/readers/bmw_reader_specificpathma;-><init>(Ljava/lang/String;)V

    sput-object v0, Lccc71/bmw/lib/bmw_watcher;->z:Lccc71/bmw/data/readers/a;

    goto/16 :goto_3

    :cond_36
    new-instance v0, Lccc71/bmw/data/readers/bmw_reader_specificpath;

    sget-object v1, Lccc71/bmw/lib/bmw_watcher;->A:Ljava/lang/String;

    invoke-direct {v0, v1}, Lccc71/bmw/data/readers/bmw_reader_specificpath;-><init>(Ljava/lang/String;)V

    sput-object v0, Lccc71/bmw/lib/bmw_watcher;->z:Lccc71/bmw/data/readers/a;

    goto/16 :goto_3

    :cond_37
    const-string v2, "sbm003sh"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_38

    const-string v2, "dm009sh"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_39

    :cond_38
    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/power_supply/fuelgauge/current"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_39

    const-string v0, "battery_widget_monitor"

    const-string v1, "Consumption stored in current fuelgauge"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "/sys/class/power_supply/fuelgauge/current"

    sput-object v0, Lccc71/bmw/lib/bmw_watcher;->A:Ljava/lang/String;

    new-instance v0, Lccc71/bmw/data/readers/bmw_reader_specificpathma;

    sget-object v1, Lccc71/bmw/lib/bmw_watcher;->A:Ljava/lang/String;

    invoke-direct {v0, v1}, Lccc71/bmw/data/readers/bmw_reader_specificpathma;-><init>(Ljava/lang/String;)V

    sput-object v0, Lccc71/bmw/lib/bmw_watcher;->z:Lccc71/bmw/data/readers/a;

    goto/16 :goto_3

    :cond_39
    const-string v2, "mediapad"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3a

    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/power_supply/battery_gauge/current_now"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3a

    const-string v0, "battery_widget_monitor"

    const-string v1, "Consumption stored in current_now battery gauge"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "/sys/class/power_supply/battery_gauge/current_now"

    sput-object v0, Lccc71/bmw/lib/bmw_watcher;->A:Ljava/lang/String;

    new-instance v0, Lccc71/bmw/data/readers/bmw_reader_specificpathma;

    sget-object v1, Lccc71/bmw/lib/bmw_watcher;->A:Ljava/lang/String;

    invoke-direct {v0, v1}, Lccc71/bmw/data/readers/bmw_reader_specificpathma;-><init>(Ljava/lang/String;)V

    sput-object v0, Lccc71/bmw/lib/bmw_watcher;->z:Lccc71/bmw/data/readers/a;

    goto/16 :goto_3

    :cond_3a
    const-string v2, "f-01d"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3b

    new-instance v0, Ljava/io/File;

    const-string v2, "/sys/class/power_supply/bq27500-0/current_now"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3b

    const-string v0, "battery_widget_monitor"

    const-string v1, "Consumption stored in bq27500 current_now"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "/sys/class/power_supply/bq27500-0/current_now"

    sput-object v0, Lccc71/bmw/lib/bmw_watcher;->A:Ljava/lang/String;

    new-instance v0, Lccc71/bmw/data/readers/bmw_reader_specificpath;

    sget-object v1, Lccc71/bmw/lib/bmw_watcher;->A:Ljava/lang/String;

    invoke-direct {v0, v1}, Lccc71/bmw/data/readers/bmw_reader_specificpath;-><init>(Ljava/lang/String;)V

    sput-object v0, Lccc71/bmw/lib/bmw_watcher;->z:Lccc71/bmw/data/readers/a;

    goto/16 :goto_3

    :cond_3b
    new-instance v0, Ljava/io/File;

    const-string v2, "/sys/devices/platform/tegra-i2c.1/i2c-1/1-0015/ec_battery"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3c

    const-string v0, "battery_widget_monitor"

    const-string v1, "Consumption stored in ec_battery"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "/sys/devices/platform/tegra-i2c.1/i2c-1/1-0015/ec_battery"

    sput-object v0, Lccc71/bmw/lib/bmw_watcher;->A:Ljava/lang/String;

    new-instance v0, Lccc71/bmw/data/readers/bmw_reader_ec_battery;

    sget-object v1, Lccc71/bmw/lib/bmw_watcher;->A:Ljava/lang/String;

    invoke-direct {v0, v1}, Lccc71/bmw/data/readers/bmw_reader_ec_battery;-><init>(Ljava/lang/String;)V

    sput-object v0, Lccc71/bmw/lib/bmw_watcher;->z:Lccc71/bmw/data/readers/a;

    goto/16 :goto_3

    :cond_3c
    const-string v0, "battery_widget_monitor"

    const-string v2, "Consumption not available"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lccc71/bmw/data/readers/bmw_reader_estimates;

    invoke-direct {v0}, Lccc71/bmw/data/readers/bmw_reader_estimates;-><init>()V

    sput-object v0, Lccc71/bmw/lib/bmw_watcher;->z:Lccc71/bmw/data/readers/a;

    sput-boolean v1, Lccc71/bmw/lib/bmw_watcher;->x:Z

    goto/16 :goto_3

    .line 485
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_9
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static e(Landroid/content/Context;)I
    .locals 3
    .parameter

    .prologue
    .line 550
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->a(Landroid/content/Context;)Lccc71/bmw/data/a;

    move-result-object v0

    .line 552
    sget v1, Lccc71/bmw/lib/bmw_watcher;->j:I

    invoke-static {v0, v1}, Lccc71/bmw/lib/bmw_watcher;->a(Lccc71/bmw/data/a;I)I

    move-result v1

    .line 553
    invoke-static {v0}, Lccc71/bmw/lib/bmw_watcher;->b(Lccc71/bmw/data/a;)I

    move-result v2

    .line 555
    invoke-static {v0, v1, v2}, Lccc71/bmw/lib/bmw_watcher;->a(Lccc71/bmw/data/a;II)I

    move-result v0

    return v0
.end method

.method public static e()Z
    .locals 1

    .prologue
    .line 860
    sget-boolean v0, Lccc71/bmw/lib/bmw_watcher;->x:Z

    if-eqz v0, :cond_0

    sget v0, Lccc71/bmw/lib/bmw_watcher;->j:I

    if-nez v0, :cond_0

    sget-boolean v0, Lccc71/bmw/lib/bmw_watcher;->c:Z

    if-nez v0, :cond_0

    .line 861
    const/4 v0, 0x1

    .line 863
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lccc71/bmw/lib/bmw_watcher;->z:Lccc71/bmw/data/readers/a;

    if-eqz v0, :cond_2

    sget v0, Lccc71/bmw/lib/bmw_watcher;->j:I

    if-nez v0, :cond_1

    sget-object v0, Lccc71/bmw/lib/bmw_watcher;->z:Lccc71/bmw/data/readers/a;

    invoke-virtual {v0}, Lccc71/bmw/data/readers/a;->c()Z

    move-result v0

    goto :goto_0

    :cond_1
    sget-object v0, Lccc71/bmw/lib/bmw_watcher;->z:Lccc71/bmw/data/readers/a;

    invoke-virtual {v0}, Lccc71/bmw/data/readers/a;->b()Z

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 880
    sget v0, Lccc71/bmw/lib/bmw_watcher;->j:I

    packed-switch v0, :pswitch_data_0

    .line 887
    sget v0, Lccc71/bmw/lib/g;->aP:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 883
    :pswitch_0
    sget v0, Lccc71/bmw/lib/g;->aK:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 885
    :pswitch_1
    sget v0, Lccc71/bmw/lib/g;->aL:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 880
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static f()Z
    .locals 2

    .prologue
    .line 868
    sget v0, Lccc71/bmw/lib/bmw_watcher;->g:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 869
    const/4 v0, 0x0

    .line 870
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 893
    sget v0, Lccc71/bmw/lib/bmw_watcher;->o:I

    packed-switch v0, :pswitch_data_0

    .line 907
    sget v0, Lccc71/bmw/lib/g;->aI:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 896
    :pswitch_0
    sget v0, Lccc71/bmw/lib/g;->aE:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 898
    :pswitch_1
    sget v0, Lccc71/bmw/lib/g;->aG:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 900
    :pswitch_2
    sget v0, Lccc71/bmw/lib/g;->aH:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 902
    :pswitch_3
    sget v0, Lccc71/bmw/lib/g;->aJ:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 905
    :pswitch_4
    sget v0, Lccc71/bmw/lib/g;->aF:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 893
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public static g()V
    .locals 4

    .prologue
    .line 1414
    :try_start_0
    sget-boolean v0, Lccc71/bmw/lib/bmw_watcher;->w:Z

    if-eqz v0, :cond_0

    .line 1415
    invoke-static {}, Lccc71/bmw/lib/bmw_watcher;->i()Z

    .line 1417
    :cond_0
    sget-boolean v0, Lccc71/bmw/lib/bmw_watcher;->x:Z

    if-eqz v0, :cond_2

    .line 1419
    sget v0, Lccc71/bmw/lib/bmw_watcher;->j:I

    if-nez v0, :cond_1

    sget-boolean v0, Lccc71/bmw/lib/bmw_watcher;->c:Z

    if-nez v0, :cond_1

    .line 1421
    invoke-static {}, Lccc71/bmw/lib/bmw_watcher;->h()V

    .line 1448
    :goto_0
    return-void

    .line 1427
    :cond_1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sput-wide v0, Lccc71/bmw/lib/bmw_watcher;->E:J

    .line 1428
    sget v0, Lccc71/bmw/lib/bmw_watcher;->h:I

    sput v0, Lccc71/bmw/lib/bmw_watcher;->F:I

    .line 1432
    sget-object v0, Lccc71/bmw/lib/bmw_watcher;->z:Lccc71/bmw/data/readers/a;

    invoke-virtual {v0}, Lccc71/bmw/data/readers/a;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1442
    :catch_0
    move-exception v0

    .line 1444
    const-string v1, "battery_widget_monitor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "failed to get battery consumption: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    new-instance v0, Lccc71/bmw/data/readers/bmw_reader_estimates;

    invoke-direct {v0}, Lccc71/bmw/data/readers/bmw_reader_estimates;-><init>()V

    sput-object v0, Lccc71/bmw/lib/bmw_watcher;->z:Lccc71/bmw/data/readers/a;

    .line 1446
    const/4 v0, 0x0

    sput-boolean v0, Lccc71/bmw/lib/bmw_watcher;->x:Z

    goto :goto_0

    .line 1439
    :cond_2
    :try_start_1
    sget-object v0, Lccc71/bmw/lib/bmw_watcher;->z:Lccc71/bmw/data/readers/a;

    invoke-virtual {v0}, Lccc71/bmw/data/readers/a;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static h()V
    .locals 7

    .prologue
    .line 1452
    sget-wide v0, Lccc71/bmw/lib/bmw_watcher;->E:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 1454
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sput-wide v0, Lccc71/bmw/lib/bmw_watcher;->E:J

    .line 1455
    sget v0, Lccc71/bmw/lib/bmw_watcher;->h:I

    sput v0, Lccc71/bmw/lib/bmw_watcher;->F:I

    .line 1489
    :cond_0
    :goto_0
    return-void

    .line 1459
    :cond_1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sget-wide v2, Lccc71/bmw/lib/bmw_watcher;->E:J

    sub-long v1, v0, v2

    .line 1460
    const-wide/32 v3, 0xea60

    cmp-long v0, v1, v3

    if-ltz v0, :cond_0

    .line 1462
    sget v0, Lccc71/bmw/lib/bmw_watcher;->F:I

    sget v3, Lccc71/bmw/lib/bmw_watcher;->h:I

    if-eq v0, v3, :cond_2

    .line 1464
    sget v0, Lccc71/bmw/lib/bmw_watcher;->h:I

    sget v3, Lccc71/bmw/lib/bmw_watcher;->F:I

    sub-int/2addr v0, v3

    int-to-double v3, v0

    const-wide v5, 0x40e1940000000000L

    mul-double/2addr v3, v5

    sget v0, Lccc71/bmw/lib/bmw_watcher;->m:I

    int-to-double v5, v0

    mul-double/2addr v3, v5

    long-to-double v0, v1

    div-double v0, v3, v0

    double-to-int v0, v0

    sput v0, Lccc71/bmw/lib/bmw_watcher;->f:I

    .line 1465
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sput-wide v0, Lccc71/bmw/lib/bmw_watcher;->E:J

    .line 1466
    sget v0, Lccc71/bmw/lib/bmw_watcher;->h:I

    sput v0, Lccc71/bmw/lib/bmw_watcher;->F:I

    goto :goto_0

    .line 1472
    :cond_2
    sget v0, Lccc71/bmw/lib/bmw_watcher;->j:I

    if-nez v0, :cond_4

    .line 1474
    const v0, -0x8ca0

    sget v3, Lccc71/bmw/lib/bmw_watcher;->m:I

    mul-int/2addr v0, v3

    int-to-long v3, v0

    div-long v0, v3, v1

    long-to-int v0, v0

    .line 1475
    sget v1, Lccc71/bmw/lib/bmw_watcher;->f:I

    if-le v0, v1, :cond_3

    .line 1476
    sput v0, Lccc71/bmw/lib/bmw_watcher;->f:I

    .line 1477
    :cond_3
    sget v0, Lccc71/bmw/lib/bmw_watcher;->f:I

    if-ltz v0, :cond_0

    .line 1478
    const/4 v0, -0x2

    sput v0, Lccc71/bmw/lib/bmw_watcher;->f:I

    goto :goto_0

    .line 1482
    :cond_4
    sget v0, Lccc71/bmw/lib/bmw_watcher;->h:I

    const/16 v3, 0x64

    if-ne v0, v3, :cond_5

    const/16 v0, 0xe10

    :goto_1
    sget v3, Lccc71/bmw/lib/bmw_watcher;->m:I

    mul-int/2addr v0, v3

    int-to-long v3, v0

    div-long v0, v3, v1

    long-to-int v0, v0

    .line 1483
    sget v1, Lccc71/bmw/lib/bmw_watcher;->f:I

    if-ge v0, v1, :cond_0

    .line 1484
    sput v0, Lccc71/bmw/lib/bmw_watcher;->f:I

    goto :goto_0

    .line 1482
    :cond_5
    const v0, 0x8ca0

    goto :goto_1
.end method

.method public static h(Landroid/content/Context;)V
    .locals 13
    .parameter

    .prologue
    const/high16 v11, 0x800

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 1493
    sget-boolean v0, Lccc71/bmw/lib/bmw_watcher;->N:Z

    if-eqz v0, :cond_2

    .line 1496
    sget v0, Lccc71/bmw/lib/bmw_watcher;->I:I

    if-nez v0, :cond_3

    .line 1498
    sget v0, Lccc71/bmw/lib/g;->aD:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1541
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1546
    sget v1, Lccc71/bmw/lib/bmw_watcher;->f:I

    mul-int/lit16 v4, v1, 0x3e8

    sget v1, Lccc71/bmw/lib/bmw_watcher;->m:I

    if-eqz v1, :cond_a

    sget v1, Lccc71/bmw/lib/bmw_watcher;->m:I

    :goto_1
    div-int v1, v4, v1

    int-to-long v4, v1

    invoke-static {v4, v5}, Lccc71/utils/al;->c(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/h, "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1547
    new-instance v2, Ljava/lang/StringBuilder;

    sget v4, Lccc71/bmw/lib/bmw_watcher;->f:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "mA, "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1548
    new-instance v4, Ljava/lang/StringBuilder;

    sget v5, Lccc71/bmw/lib/bmw_watcher;->h:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "%, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->h(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lccc71/bmw/lib/bmw_watcher;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mV, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lccc71/bmw/lib/bmw_watcher;->k:F

    invoke-static {p0, v2}, Lccc71/bmw/lib/bmw_settings;->b(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1550
    sget-object v2, Lccc71/bmw/lib/bmw_watcher;->O:Ljava/lang/String;

    if-eqz v2, :cond_0

    sget-object v2, Lccc71/bmw/lib/bmw_watcher;->O:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_d

    .line 1552
    :cond_0
    new-instance v2, Landroid/app/Notification;

    sget v4, Lccc71/bmw/lib/c;->q:I

    const-string v5, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v2, v4, v5, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1553
    iget v4, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x20

    iput v4, v2, Landroid/app/Notification;->flags:I

    .line 1554
    iget v4, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v2, Landroid/app/Notification;->flags:I

    .line 1556
    sget-object v4, Lccc71/bmw/lib/bmw_watcher;->ai:Landroid/app/PendingIntent;

    if-nez v4, :cond_1

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    sput-object v4, Lccc71/bmw/lib/bmw_watcher;->aj:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lccc71/bmw/lib/bmw_watcher;->aj:Landroid/content/Intent;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".bmw_status"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v4, Lccc71/bmw/lib/bmw_watcher;->aj:Landroid/content/Intent;

    invoke-static {p0, v3, v4, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    sput-object v4, Lccc71/bmw/lib/bmw_watcher;->ai:Landroid/app/PendingIntent;

    :cond_1
    sget-object v4, Lccc71/bmw/lib/bmw_watcher;->ai:Landroid/app/PendingIntent;

    invoke-virtual {v2, p0, v0, v1, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1564
    sget-object v0, Lccc71/bmw/lib/bmw_watcher;->ai:Landroid/app/PendingIntent;

    if-eqz v0, :cond_c

    .line 1565
    sget-object v0, Lccc71/bmw/lib/bmw_watcher;->ak:Landroid/app/NotificationManager;

    invoke-virtual {v0, v3, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1595
    :cond_2
    :goto_3
    return-void

    .line 1502
    :cond_3
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->a(Landroid/content/Context;)Lccc71/bmw/data/a;

    move-result-object v0

    .line 1503
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iget-wide v4, v0, Lccc71/bmw/data/a;->a:J

    sub-long/2addr v1, v4

    const-wide/16 v4, 0x3e8

    div-long v4, v1, v4

    .line 1504
    sget v1, Lccc71/bmw/lib/bmw_watcher;->I:I

    if-ne v1, v8, :cond_4

    .line 1505
    invoke-static {p0}, Lccc71/bmw/lib/bmw_watcher;->e(Landroid/content/Context;)I

    move-result v0

    .line 1504
    :goto_4
    int-to-long v6, v0

    .line 1512
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1514
    sget-object v2, Lccc71/bmw/lib/bmw_watcher;->ae:Ljava/lang/String;

    .line 1515
    const-wide/16 v0, 0x3c

    cmp-long v0, v4, v0

    if-gez v0, :cond_7

    .line 1516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1519
    :goto_5
    invoke-static {v6, v7}, Lccc71/utils/al;->a(J)Ljava/lang/String;

    move-result-object v1

    move-object v12, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v12

    .line 1531
    :goto_6
    sget v4, Lccc71/bmw/lib/bmw_watcher;->j:I

    packed-switch v4, :pswitch_data_0

    .line 1540
    sget-object v4, Lccc71/bmw/lib/bmw_watcher;->ah:Ljava/lang/String;

    new-array v5, v10, [Ljava/lang/Object;

    aput-object v1, v5, v3

    aput-object v2, v5, v8

    aput-object v0, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1505
    :cond_4
    sget v1, Lccc71/bmw/lib/bmw_watcher;->I:I

    if-ne v1, v9, :cond_5

    .line 1506
    sget v1, Lccc71/bmw/lib/bmw_watcher;->j:I

    invoke-static {v0, v1}, Lccc71/bmw/lib/bmw_watcher;->a(Lccc71/bmw/data/a;I)I

    move-result v0

    goto :goto_4

    :cond_5
    sget v1, Lccc71/bmw/lib/bmw_watcher;->I:I

    if-ne v1, v10, :cond_6

    .line 1507
    invoke-static {v0}, Lccc71/bmw/lib/bmw_watcher;->b(Lccc71/bmw/data/a;)I

    move-result v0

    goto :goto_4

    :cond_6
    invoke-static {}, Lccc71/bmw/lib/bmw_watcher;->d()I

    move-result v0

    goto :goto_4

    .line 1518
    :cond_7
    invoke-static {v4, v5}, Lccc71/utils/al;->a(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 1523
    :cond_8
    const-string v2, "@"

    .line 1524
    const-wide/16 v0, 0x3c

    cmp-long v0, v4, v0

    if-gez v0, :cond_9

    .line 1525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1528
    :goto_7
    invoke-static {p0, v6, v7}, Lccc71/utils/al;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    move-object v12, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v12

    goto :goto_6

    .line 1527
    :cond_9
    neg-long v0, v4

    invoke-static {p0, v0, v1}, Lccc71/utils/al;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 1534
    :pswitch_0
    sget-object v4, Lccc71/bmw/lib/bmw_watcher;->af:Ljava/lang/String;

    new-array v5, v10, [Ljava/lang/Object;

    aput-object v1, v5, v3

    aput-object v2, v5, v8

    aput-object v0, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1537
    :pswitch_1
    sget-object v4, Lccc71/bmw/lib/bmw_watcher;->ag:Ljava/lang/String;

    new-array v5, v10, [Ljava/lang/Object;

    aput-object v1, v5, v3

    aput-object v2, v5, v8

    aput-object v0, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1546
    :cond_a
    const/16 v1, 0x5dc

    goto/16 :goto_1

    .line 1548
    :cond_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 1567
    :cond_c
    const-string v0, "battery_widget_monitor"

    const-string v1, "No content Intent - cannot start notification!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1571
    :cond_d
    sget-object v2, Lccc71/bmw/lib/bmw_watcher;->O:Ljava/lang/String;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1573
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 1574
    const-string v5, "level"

    sget v6, Lccc71/bmw/lib/bmw_watcher;->h:I

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1575
    const-string v5, "volt"

    sget v6, Lccc71/bmw/lib/bmw_watcher;->i:I

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1576
    const-string v5, "temp"

    sget v6, Lccc71/bmw/lib/bmw_watcher;->k:F

    const/high16 v7, 0x4120

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1577
    const-string v5, "consume"

    sget v6, Lccc71/bmw/lib/bmw_watcher;->f:I

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1578
    const-string v5, "capacity"

    sget v6, Lccc71/bmw/lib/bmw_watcher;->m:I

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1579
    const-string v5, "apptitle"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1580
    const-string v5, "title"

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1581
    const-string v0, "text"

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1582
    const-string v0, "plugged"

    sget v1, Lccc71/bmw/lib/bmw_watcher;->j:I

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1583
    const-string v0, "intent"

    sget-object v1, Lccc71/bmw/lib/bmw_watcher;->aj:Landroid/content/Intent;

    if-nez v1, :cond_e

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    sput-object v1, Lccc71/bmw/lib/bmw_watcher;->aj:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lccc71/bmw/lib/bmw_watcher;->aj:Landroid/content/Intent;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".bmw_status"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lccc71/bmw/lib/bmw_watcher;->aj:Landroid/content/Intent;

    invoke-static {p0, v3, v1, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    sput-object v1, Lccc71/bmw/lib/bmw_watcher;->ai:Landroid/app/PendingIntent;

    :cond_e
    sget-object v1, Lccc71/bmw/lib/bmw_watcher;->aj:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->toURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1585
    array-length v1, v2

    move v0, v3

    .line 1586
    :goto_8
    if-ge v0, v1, :cond_2

    .line 1588
    aget-object v3, v2, v0

    .line 1590
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ".bmw_notification"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1591
    invoke-virtual {p0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1586
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1531
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static i(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 1599
    sget v0, Lccc71/bmw/lib/bmw_watcher;->h:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    .line 1601
    sget v0, Lccc71/bmw/lib/bmw_watcher;->f:I

    if-gtz v0, :cond_0

    sget v0, Lccc71/bmw/lib/bmw_watcher;->j:I

    if-eqz v0, :cond_0

    sget-boolean v0, Lccc71/bmw/lib/bmw_watcher;->V:Z

    if-nez v0, :cond_0

    sget-object v0, Lccc71/bmw/lib/bmw_watcher;->Q:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1603
    const-string v0, "battery_widget_monitor"

    const-string v1, "bmw_watcher battery full zero charge alarm!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    const/4 v0, 0x1

    sput-boolean v0, Lccc71/bmw/lib/bmw_watcher;->V:Z

    .line 1605
    sget-object v0, Lccc71/bmw/lib/bmw_watcher;->C:Lccc71/bmw/lib/bmw_watcher;

    sget-object v0, Lccc71/bmw/lib/bmw_watcher;->Q:Ljava/lang/String;

    sget v1, Lccc71/bmw/lib/g;->bz:I

    invoke-static {p0, v0, v1}, Lccc71/bmw/lib/bmw_watcher;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1612
    :cond_0
    :goto_0
    return-void

    .line 1608
    :cond_1
    sget v0, Lccc71/bmw/lib/bmw_watcher;->j:I

    if-nez v0, :cond_0

    .line 1610
    const/4 v0, 0x0

    sput-boolean v0, Lccc71/bmw/lib/bmw_watcher;->V:Z

    goto :goto_0
.end method

.method private static i()Z
    .locals 5

    .prologue
    const/16 v4, 0x64

    const/4 v0, 0x0

    .line 747
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/power_supply/battery/charge_counter"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 748
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 753
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 754
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 756
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 757
    sput v3, Lccc71/bmw/lib/bmw_watcher;->h:I

    if-le v3, v4, :cond_0

    .line 758
    const/16 v3, 0x64

    sput v3, Lccc71/bmw/lib/bmw_watcher;->h:I

    .line 760
    :cond_0
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    .line 761
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 763
    const/4 v0, 0x1

    .line 778
    :goto_0
    return v0

    .line 767
    :catch_0
    move-exception v1

    sput-boolean v0, Lccc71/bmw/lib/bmw_watcher;->w:Z

    .line 768
    const-string v1, "battery_widget_monitor"

    const-string v2, "Cannot read charge_counter file"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 773
    :cond_1
    sput-boolean v0, Lccc71/bmw/lib/bmw_watcher;->w:Z

    .line 774
    const-string v1, "battery_widget_monitor"

    const-string v2, "Cannot find percent file, using voltage data"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static synthetic j()[I
    .locals 3

    .prologue
    .line 52
    sget-object v0, Lccc71/bmw/lib/bmw_watcher;->ap:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lccc71/bmw/lib/eh;->values()[Lccc71/bmw/lib/eh;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lccc71/bmw/lib/eh;->m:Lccc71/bmw/lib/eh;

    invoke-virtual {v1}, Lccc71/bmw/lib/eh;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_d

    :goto_1
    :try_start_1
    sget-object v1, Lccc71/bmw/lib/eh;->f:Lccc71/bmw/lib/eh;

    invoke-virtual {v1}, Lccc71/bmw/lib/eh;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_c

    :goto_2
    :try_start_2
    sget-object v1, Lccc71/bmw/lib/eh;->j:Lccc71/bmw/lib/eh;

    invoke-virtual {v1}, Lccc71/bmw/lib/eh;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_b

    :goto_3
    :try_start_3
    sget-object v1, Lccc71/bmw/lib/eh;->n:Lccc71/bmw/lib/eh;

    invoke-virtual {v1}, Lccc71/bmw/lib/eh;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_a

    :goto_4
    :try_start_4
    sget-object v1, Lccc71/bmw/lib/eh;->e:Lccc71/bmw/lib/eh;

    invoke-virtual {v1}, Lccc71/bmw/lib/eh;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_9

    :goto_5
    :try_start_5
    sget-object v1, Lccc71/bmw/lib/eh;->g:Lccc71/bmw/lib/eh;

    invoke-virtual {v1}, Lccc71/bmw/lib/eh;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_8

    :goto_6
    :try_start_6
    sget-object v1, Lccc71/bmw/lib/eh;->h:Lccc71/bmw/lib/eh;

    invoke-virtual {v1}, Lccc71/bmw/lib/eh;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_7

    :goto_7
    :try_start_7
    sget-object v1, Lccc71/bmw/lib/eh;->i:Lccc71/bmw/lib/eh;

    invoke-virtual {v1}, Lccc71/bmw/lib/eh;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_6

    :goto_8
    :try_start_8
    sget-object v1, Lccc71/bmw/lib/eh;->b:Lccc71/bmw/lib/eh;

    invoke-virtual {v1}, Lccc71/bmw/lib/eh;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_5

    :goto_9
    :try_start_9
    sget-object v1, Lccc71/bmw/lib/eh;->k:Lccc71/bmw/lib/eh;

    invoke-virtual {v1}, Lccc71/bmw/lib/eh;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_4

    :goto_a
    :try_start_a
    sget-object v1, Lccc71/bmw/lib/eh;->l:Lccc71/bmw/lib/eh;

    invoke-virtual {v1}, Lccc71/bmw/lib/eh;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_3

    :goto_b
    :try_start_b
    sget-object v1, Lccc71/bmw/lib/eh;->c:Lccc71/bmw/lib/eh;

    invoke-virtual {v1}, Lccc71/bmw/lib/eh;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_2

    :goto_c
    :try_start_c
    sget-object v1, Lccc71/bmw/lib/eh;->d:Lccc71/bmw/lib/eh;

    invoke-virtual {v1}, Lccc71/bmw/lib/eh;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_1

    :goto_d
    :try_start_d
    sget-object v1, Lccc71/bmw/lib/eh;->a:Lccc71/bmw/lib/eh;

    invoke-virtual {v1}, Lccc71/bmw/lib/eh;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_0

    :goto_e
    sput-object v0, Lccc71/bmw/lib/bmw_watcher;->ap:[I

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_e

    :catch_1
    move-exception v1

    goto :goto_d

    :catch_2
    move-exception v1

    goto :goto_c

    :catch_3
    move-exception v1

    goto :goto_b

    :catch_4
    move-exception v1

    goto :goto_a

    :catch_5
    move-exception v1

    goto :goto_9

    :catch_6
    move-exception v1

    goto :goto_8

    :catch_7
    move-exception v1

    goto :goto_7

    :catch_8
    move-exception v1

    goto :goto_6

    :catch_9
    move-exception v1

    goto :goto_5

    :catch_a
    move-exception v1

    goto :goto_4

    :catch_b
    move-exception v1

    goto/16 :goto_3

    :catch_c
    move-exception v1

    goto/16 :goto_2

    :catch_d
    move-exception v1

    goto/16 :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/16 v4, 0xa

    const/16 v9, 0x64

    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 1726
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1729
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1731
    sget v0, Lccc71/bmw/lib/bmw_watcher;->j:I

    sput v0, Lccc71/bmw/lib/bmw_watcher;->G:I

    .line 1732
    sget-boolean v0, Lccc71/bmw/lib/bmw_watcher;->w:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lccc71/bmw/lib/bmw_watcher;->i()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "level"

    invoke-virtual {p2, v0, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lccc71/bmw/lib/bmw_watcher;->h:I

    :cond_1
    const-string v0, "scale"

    invoke-virtual {p2, v0, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v0, "plugged"

    sget v3, Lccc71/bmw/lib/bmw_watcher;->j:I

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lccc71/bmw/lib/bmw_watcher;->j:I

    const-string v0, "voltage"

    invoke-virtual {p2, v0, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lccc71/bmw/lib/bmw_watcher;->i:I

    if-ge v0, v4, :cond_2

    sget-object v0, Lccc71/bmw/lib/bmw_watcher;->am:Ljava/lang/String;

    if-eqz v0, :cond_f

    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v3, Lccc71/bmw/lib/bmw_watcher;->am:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/16 v0, 0xa

    invoke-direct {v3, v4, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lccc71/bmw/lib/bmw_watcher;->i:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    :goto_0
    const-string v0, "health"

    const/4 v3, 0x2

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lccc71/bmw/lib/bmw_watcher;->o:I

    const-string v0, "status"

    invoke-virtual {p2, v0, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lccc71/bmw/lib/bmw_watcher;->p:I

    const-string v0, "technology"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bmw_watcher;->l:Ljava/lang/String;

    const-string v0, "temperature"

    invoke-virtual {p2, v0, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    sget v3, Lccc71/bmw/lib/bmw_watcher;->ac:I

    int-to-float v3, v3

    mul-float/2addr v0, v3

    const/high16 v3, 0x4120

    div-float/2addr v0, v3

    sput v0, Lccc71/bmw/lib/bmw_watcher;->k:F

    if-lez v2, :cond_3

    sget v0, Lccc71/bmw/lib/bmw_watcher;->h:I

    mul-int/lit8 v0, v0, 0x64

    div-int/2addr v0, v2

    sput v0, Lccc71/bmw/lib/bmw_watcher;->h:I

    :cond_3
    sget-boolean v0, Lccc71/bmw/lib/bmw_watcher;->t:Z

    if-eqz v0, :cond_5

    sget v0, Lccc71/bmw/lib/bmw_watcher;->u:I

    if-eqz v0, :cond_4

    sget v0, Lccc71/bmw/lib/bmw_watcher;->v:I

    if-eqz v0, :cond_4

    sget v0, Lccc71/bmw/lib/bmw_watcher;->v:I

    sget v2, Lccc71/bmw/lib/bmw_watcher;->u:I

    if-ne v0, v2, :cond_11

    :cond_4
    sput-boolean v1, Lccc71/bmw/lib/bmw_watcher;->t:Z

    .line 1733
    :cond_5
    :goto_1
    sget-boolean v0, Lccc71/bmw/lib/bmw_watcher;->y:Z

    if-eqz v0, :cond_6

    .line 1735
    invoke-static {}, Lccc71/bmw/lib/bmw_watcher;->h()V

    .line 1736
    sget v0, Lccc71/bmw/lib/bmw_scheduler;->b:I

    sget v2, Lccc71/bmw/lib/bmw_watcher;->f:I

    add-int/2addr v0, v2

    sput v0, Lccc71/bmw/lib/bmw_scheduler;->b:I

    .line 1737
    sget v0, Lccc71/bmw/lib/bmw_scheduler;->c:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lccc71/bmw/lib/bmw_scheduler;->c:I

    .line 1742
    :cond_6
    sget v0, Lccc71/bmw/lib/bmw_watcher;->G:I

    if-ne v0, v8, :cond_19

    .line 1744
    invoke-static {p1}, Lccc71/bmw/lib/bmw_settings;->a(Landroid/content/Context;)Lccc71/bmw/data/a;

    move-result-object v0

    .line 1746
    sget v2, Lccc71/bmw/lib/bmw_watcher;->j:I

    shl-int v2, v7, v2

    int-to-byte v2, v2

    sput-byte v2, Lccc71/bmw/lib/bmw_watcher;->D:B

    .line 1750
    sget v2, Lccc71/bmw/lib/bmw_watcher;->j:I

    if-nez v2, :cond_18

    .line 1752
    iget v2, v0, Lccc71/bmw/data/a;->b:I

    sget v3, Lccc71/bmw/lib/bmw_watcher;->h:I

    if-ge v2, v3, :cond_7

    .line 1754
    const-string v2, "battery_widget_monitor"

    const-string v3, "Unplugged without notification... Resetting..."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1755
    invoke-static {p1, v0}, Lccc71/bmw/lib/bmw_watcher;->a(Landroid/content/Context;Lccc71/bmw/data/a;)Lccc71/bmw/data/a;

    .line 1769
    :cond_7
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1770
    new-instance v4, Ljava/util/Date;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long v2, v5, v2

    invoke-direct {v4, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 1771
    iget-wide v2, v0, Lccc71/bmw/data/a;->a:J

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_8

    sget-boolean v2, Lccc71/bmw/lib/bmw_watcher;->e:Z

    if-eqz v2, :cond_8

    .line 1773
    const-string v2, "battery_widget_monitor"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Phone was switched off... Resetting...("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lccc71/bmw/lib/bmw_settings;->j(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1774
    invoke-static {p1, v0}, Lccc71/bmw/lib/bmw_watcher;->a(Landroid/content/Context;Lccc71/bmw/data/a;)Lccc71/bmw/data/a;

    .line 1841
    :cond_8
    :goto_3
    sget v0, Lccc71/bmw/lib/bmw_watcher;->h:I

    if-ne v0, v9, :cond_9

    sget v0, Lccc71/bmw/lib/bmw_watcher;->j:I

    if-eqz v0, :cond_9

    .line 1843
    invoke-static {p1}, Lccc71/bmw/lib/bmw_settings;->a(Landroid/content/Context;)Lccc71/bmw/data/a;

    move-result-object v0

    .line 1847
    iget v2, v0, Lccc71/bmw/data/a;->b:I

    if-eq v2, v9, :cond_9

    .line 1849
    sget v2, Lccc71/bmw/lib/bmw_watcher;->j:I

    invoke-static {v0, v2}, Lccc71/bmw/lib/bmw_watcher;->b(Lccc71/bmw/data/a;I)V

    .line 1850
    iput v9, v0, Lccc71/bmw/data/a;->b:I

    .line 1851
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, v0, Lccc71/bmw/data/a;->a:J

    .line 1853
    invoke-static {p1, v0}, Lccc71/bmw/lib/bmw_settings;->a(Landroid/content/Context;Lccc71/bmw/data/a;)V

    .line 1857
    :cond_9
    sget-boolean v0, Lccc71/bmw/lib/bmw_watcher;->T:Z

    if-eqz v0, :cond_c

    .line 1859
    sget v0, Lccc71/bmw/lib/bmw_watcher;->h:I

    if-ne v0, v9, :cond_21

    sget v0, Lccc71/bmw/lib/bmw_watcher;->j:I

    if-eqz v0, :cond_a

    sget-boolean v0, Lccc71/bmw/lib/bmw_watcher;->U:Z

    if-nez v0, :cond_a

    sget-object v0, Lccc71/bmw/lib/bmw_watcher;->P:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "battery_widget_monitor"

    const-string v2, "bmw_watcher battery full alarm!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v7, Lccc71/bmw/lib/bmw_watcher;->U:Z

    sget-object v0, Lccc71/bmw/lib/bmw_watcher;->C:Lccc71/bmw/lib/bmw_watcher;

    sget-object v0, Lccc71/bmw/lib/bmw_watcher;->P:Ljava/lang/String;

    sget v2, Lccc71/bmw/lib/g;->bw:I

    invoke-static {p1, v0, v2}, Lccc71/bmw/lib/bmw_watcher;->a(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_a
    :goto_4
    sget-object v0, Lccc71/bmw/lib/bmw_watcher;->R:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    sget v0, Lccc71/bmw/lib/bmw_watcher;->i:I

    sget v2, Lccc71/bmw/lib/bmw_watcher;->Z:I

    if-le v0, v2, :cond_22

    sget-boolean v0, Lccc71/bmw/lib/bmw_watcher;->W:Z

    if-nez v0, :cond_b

    sput-boolean v7, Lccc71/bmw/lib/bmw_watcher;->W:Z

    const-string v0, "battery_widget_monitor"

    const-string v2, "bmw_watcher voltage too high alam!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lccc71/bmw/lib/bmw_watcher;->C:Lccc71/bmw/lib/bmw_watcher;

    sget-object v0, Lccc71/bmw/lib/bmw_watcher;->R:Ljava/lang/String;

    sget v2, Lccc71/bmw/lib/g;->by:I

    invoke-static {p1, v0, v2}, Lccc71/bmw/lib/bmw_watcher;->a(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_b
    :goto_5
    sget-object v0, Lccc71/bmw/lib/bmw_watcher;->S:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    sget v0, Lccc71/bmw/lib/bmw_watcher;->ad:I

    sget v2, Lccc71/bmw/lib/bmw_watcher;->k:F

    invoke-static {v0, v2}, Lccc71/bmw/lib/bmw_settings;->a(IF)F

    move-result v0

    sget v2, Lccc71/bmw/lib/bmw_watcher;->ab:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_24

    sget-boolean v0, Lccc71/bmw/lib/bmw_watcher;->Y:Z

    if-nez v0, :cond_c

    sput-boolean v7, Lccc71/bmw/lib/bmw_watcher;->Y:Z

    const-string v0, "battery_widget_monitor"

    const-string v2, "bmw_watcher temperature too high alarm!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lccc71/bmw/lib/bmw_watcher;->C:Lccc71/bmw/lib/bmw_watcher;

    sget-object v0, Lccc71/bmw/lib/bmw_watcher;->S:Ljava/lang/String;

    sget v2, Lccc71/bmw/lib/g;->bx:I

    invoke-static {p1, v0, v2}, Lccc71/bmw/lib/bmw_watcher;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1862
    :cond_c
    :goto_6
    sget-boolean v0, Lccc71/bmw/lib/bmw_watcher;->c:Z

    if-eqz v0, :cond_25

    .line 1864
    invoke-static {p1}, Lccc71/bmw/lib/bmw_watcher;->h(Landroid/content/Context;)V

    .line 1865
    invoke-static {p1, v1}, Lccc71/bmw/lib/bmw_widget;->a(Landroid/content/Context;Z)V

    .line 1866
    sget-object v0, Lccc71/bmw/lib/bmw_status;->a:Lccc71/bmw/lib/ed;

    if-eqz v0, :cond_d

    .line 1867
    sget-object v0, Lccc71/bmw/lib/bmw_status;->a:Lccc71/bmw/lib/ed;

    invoke-virtual {v0, v7}, Lccc71/bmw/lib/ed;->sendEmptyMessage(I)Z

    .line 1868
    :cond_d
    sget-object v0, Lccc71/bmw/lib/bmw_estimates;->a:Lccc71/bmw/lib/an;

    if-eqz v0, :cond_e

    .line 1869
    sget-object v0, Lccc71/bmw/lib/bmw_estimates;->a:Lccc71/bmw/lib/an;

    invoke-virtual {v0, v1}, Lccc71/bmw/lib/an;->sendEmptyMessage(I)Z

    .line 1946
    :cond_e
    :goto_7
    return-void

    .line 1732
    :cond_f
    :try_start_1
    sget-object v0, Lccc71/bmw/lib/bmw_watcher;->al:[Ljava/lang/String;

    array-length v3, v0

    move v0, v1

    :goto_8
    if-ge v0, v3, :cond_2

    new-instance v4, Ljava/io/File;

    sget-object v5, Lccc71/bmw/lib/bmw_watcher;->al:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_10

    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/16 v4, 0xa

    invoke-direct {v5, v6, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lccc71/bmw/lib/bmw_watcher;->i:I

    sget-object v4, Lccc71/bmw/lib/bmw_watcher;->al:[Ljava/lang/String;

    aget-object v4, v4, v0

    sput-object v4, Lccc71/bmw/lib/bmw_watcher;->am:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_11
    sget v0, Lccc71/bmw/lib/bmw_watcher;->i:I

    sget v2, Lccc71/bmw/lib/bmw_watcher;->r:I

    sget v3, Lccc71/bmw/lib/bmw_watcher;->q:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    sget v2, Lccc71/bmw/lib/bmw_watcher;->i:I

    sget v3, Lccc71/bmw/lib/bmw_watcher;->u:I

    if-ge v2, v3, :cond_15

    sget v2, Lccc71/bmw/lib/bmw_watcher;->i:I

    sput v2, Lccc71/bmw/lib/bmw_watcher;->u:I

    :cond_12
    :goto_9
    sget v2, Lccc71/bmw/lib/bmw_watcher;->u:I

    sub-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x64

    sget v2, Lccc71/bmw/lib/bmw_watcher;->v:I

    sget v3, Lccc71/bmw/lib/bmw_watcher;->u:I

    sub-int/2addr v2, v3

    div-int/2addr v0, v2

    sput v0, Lccc71/bmw/lib/bmw_watcher;->h:I

    const-string v0, "battery_widget_monitor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Result in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lccc71/bmw/lib/bmw_watcher;->h:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lccc71/bmw/lib/bmw_watcher;->j:I

    if-nez v0, :cond_16

    sget v0, Lccc71/bmw/lib/bmw_watcher;->h:I

    sget v2, Lccc71/bmw/lib/bmw_watcher;->s:I

    if-le v0, v2, :cond_13

    sget v0, Lccc71/bmw/lib/bmw_watcher;->s:I

    if-eq v0, v8, :cond_13

    sget v0, Lccc71/bmw/lib/bmw_watcher;->s:I

    sput v0, Lccc71/bmw/lib/bmw_watcher;->h:I

    :cond_13
    :goto_a
    sget v0, Lccc71/bmw/lib/bmw_watcher;->h:I

    if-gez v0, :cond_17

    sput v1, Lccc71/bmw/lib/bmw_watcher;->h:I

    :cond_14
    :goto_b
    sget v0, Lccc71/bmw/lib/bmw_watcher;->r:I

    sput v0, Lccc71/bmw/lib/bmw_watcher;->q:I

    sget v0, Lccc71/bmw/lib/bmw_watcher;->i:I

    sput v0, Lccc71/bmw/lib/bmw_watcher;->r:I

    sget v0, Lccc71/bmw/lib/bmw_watcher;->h:I

    sput v0, Lccc71/bmw/lib/bmw_watcher;->s:I

    goto/16 :goto_1

    :cond_15
    sget v2, Lccc71/bmw/lib/bmw_watcher;->i:I

    sget v3, Lccc71/bmw/lib/bmw_watcher;->v:I

    if-le v2, v3, :cond_12

    sget v2, Lccc71/bmw/lib/bmw_watcher;->i:I

    sput v2, Lccc71/bmw/lib/bmw_watcher;->v:I

    goto :goto_9

    :cond_16
    sget v0, Lccc71/bmw/lib/bmw_watcher;->h:I

    sget v2, Lccc71/bmw/lib/bmw_watcher;->s:I

    if-ge v0, v2, :cond_13

    sget v0, Lccc71/bmw/lib/bmw_watcher;->s:I

    sput v0, Lccc71/bmw/lib/bmw_watcher;->h:I

    goto :goto_a

    :cond_17
    sget v0, Lccc71/bmw/lib/bmw_watcher;->h:I

    if-le v0, v9, :cond_14

    sput v9, Lccc71/bmw/lib/bmw_watcher;->h:I

    goto :goto_b

    .line 1760
    :cond_18
    iget v2, v0, Lccc71/bmw/data/a;->b:I

    sget v3, Lccc71/bmw/lib/bmw_watcher;->h:I

    if-le v2, v3, :cond_7

    .line 1762
    const-string v2, "battery_widget_monitor"

    const-string v3, "Plugged without notification... Resetting..."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1763
    invoke-static {p1, v0}, Lccc71/bmw/lib/bmw_watcher;->a(Landroid/content/Context;Lccc71/bmw/data/a;)Lccc71/bmw/data/a;

    goto/16 :goto_2

    .line 1777
    :cond_19
    sget v0, Lccc71/bmw/lib/bmw_watcher;->G:I

    sget v2, Lccc71/bmw/lib/bmw_watcher;->j:I

    if-eq v0, v2, :cond_8

    .line 1781
    sget v0, Lccc71/bmw/lib/bmw_watcher;->j:I

    if-eqz v0, :cond_1d

    .line 1785
    invoke-static {p1}, Lccc71/bmw/lib/bmw_settings;->a(Landroid/content/Context;)Lccc71/bmw/data/a;

    move-result-object v0

    .line 1787
    iget v2, v0, Lccc71/bmw/data/a;->b:I

    sget v3, Lccc71/bmw/lib/bmw_watcher;->h:I

    if-eq v2, v3, :cond_1a

    .line 1789
    invoke-static {v0}, Lccc71/bmw/lib/bmw_watcher;->c(Lccc71/bmw/data/a;)V

    .line 1792
    :cond_1a
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, v0, Lccc71/bmw/data/a;->a:J

    .line 1793
    sget v2, Lccc71/bmw/lib/bmw_watcher;->h:I

    iput v2, v0, Lccc71/bmw/data/a;->b:I

    .line 1794
    sget v2, Lccc71/bmw/lib/bmw_watcher;->j:I

    iput v2, v0, Lccc71/bmw/data/a;->c:I

    .line 1795
    invoke-static {p1, v0}, Lccc71/bmw/lib/bmw_settings;->a(Landroid/content/Context;Lccc71/bmw/data/a;)V

    .line 1797
    sget-byte v0, Lccc71/bmw/lib/bmw_watcher;->D:B

    sget v2, Lccc71/bmw/lib/bmw_watcher;->j:I

    shl-int v2, v7, v2

    or-int/2addr v0, v2

    int-to-byte v0, v0

    sput-byte v0, Lccc71/bmw/lib/bmw_watcher;->D:B

    .line 1799
    sget-boolean v0, Lccc71/bmw/lib/bmw_watcher;->c:Z

    if-eqz v0, :cond_1c

    .line 1801
    invoke-static {p1, v1}, Lccc71/bmw/lib/bmw_widget;->a(Landroid/content/Context;Z)V

    .line 1802
    sget-object v0, Lccc71/bmw/lib/bmw_status;->a:Lccc71/bmw/lib/ed;

    if-eqz v0, :cond_1b

    .line 1803
    sget-object v0, Lccc71/bmw/lib/bmw_status;->a:Lccc71/bmw/lib/ed;

    invoke-virtual {v0, v7}, Lccc71/bmw/lib/ed;->sendEmptyMessage(I)Z

    .line 1804
    :cond_1b
    sget-object v0, Lccc71/bmw/lib/bmw_estimates;->a:Lccc71/bmw/lib/an;

    if-eqz v0, :cond_1c

    .line 1805
    sget-object v0, Lccc71/bmw/lib/bmw_estimates;->a:Lccc71/bmw/lib/an;

    invoke-virtual {v0, v1}, Lccc71/bmw/lib/an;->sendEmptyMessage(I)Z

    .line 1808
    :cond_1c
    invoke-static {p1}, Lccc71/bmw/lib/bmw_settings;->N(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1809
    sget v0, Lccc71/bmw/lib/g;->bT:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v2, -0x22007f80

    invoke-static {p1, v0, v2, v7}, Lccc71/bmw/data/a/e;->a(Landroid/content/Context;Ljava/lang/String;IZ)V

    goto/16 :goto_3

    .line 1813
    :cond_1d
    invoke-static {p1}, Lccc71/bmw/lib/bmw_settings;->a(Landroid/content/Context;)Lccc71/bmw/data/a;

    move-result-object v0

    .line 1814
    sget v2, Lccc71/bmw/lib/bmw_watcher;->h:I

    iget v3, v0, Lccc71/bmw/data/a;->b:I

    if-eq v2, v3, :cond_1e

    sget v2, Lccc71/bmw/lib/bmw_watcher;->h:I

    if-eq v2, v9, :cond_1e

    .line 1816
    sget v2, Lccc71/bmw/lib/bmw_watcher;->G:I

    invoke-static {v0, v2}, Lccc71/bmw/lib/bmw_watcher;->b(Lccc71/bmw/data/a;I)V

    .line 1818
    :cond_1e
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, v0, Lccc71/bmw/data/a;->a:J

    .line 1819
    sget v2, Lccc71/bmw/lib/bmw_watcher;->h:I

    iput v2, v0, Lccc71/bmw/data/a;->b:I

    .line 1820
    sget v2, Lccc71/bmw/lib/bmw_watcher;->j:I

    iput v2, v0, Lccc71/bmw/data/a;->c:I

    .line 1821
    invoke-static {p1, v0}, Lccc71/bmw/lib/bmw_settings;->a(Landroid/content/Context;Lccc71/bmw/data/a;)V

    .line 1823
    sget-byte v2, Lccc71/bmw/lib/bmw_watcher;->D:B

    or-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    sput-byte v2, Lccc71/bmw/lib/bmw_watcher;->D:B

    .line 1825
    sget-boolean v2, Lccc71/bmw/lib/bmw_watcher;->c:Z

    if-eqz v2, :cond_20

    .line 1827
    invoke-static {p1, v1}, Lccc71/bmw/lib/bmw_widget;->a(Landroid/content/Context;Z)V

    .line 1828
    sget-object v2, Lccc71/bmw/lib/bmw_status;->a:Lccc71/bmw/lib/ed;

    if-eqz v2, :cond_1f

    .line 1829
    sget-object v2, Lccc71/bmw/lib/bmw_status;->a:Lccc71/bmw/lib/ed;

    invoke-virtual {v2, v7}, Lccc71/bmw/lib/ed;->sendEmptyMessage(I)Z

    .line 1830
    :cond_1f
    sget-object v2, Lccc71/bmw/lib/bmw_estimates;->a:Lccc71/bmw/lib/an;

    if-eqz v2, :cond_20

    .line 1831
    sget-object v2, Lccc71/bmw/lib/bmw_estimates;->a:Lccc71/bmw/lib/an;

    invoke-virtual {v2, v1}, Lccc71/bmw/lib/an;->sendEmptyMessage(I)Z

    .line 1834
    :cond_20
    invoke-static {p1, v0}, Lccc71/bmw/lib/bmw_settings;->a(Landroid/content/Context;Lccc71/bmw/data/a;)V

    .line 1836
    invoke-static {p1}, Lccc71/bmw/lib/bmw_settings;->N(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1837
    sget v0, Lccc71/bmw/lib/g;->bS:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v2, -0x227f0080

    invoke-static {p1, v0, v2, v7}, Lccc71/bmw/data/a/e;->a(Landroid/content/Context;Ljava/lang/String;IZ)V

    goto/16 :goto_3

    .line 1859
    :cond_21
    sput-boolean v1, Lccc71/bmw/lib/bmw_watcher;->U:Z

    goto/16 :goto_4

    :cond_22
    sget v0, Lccc71/bmw/lib/bmw_watcher;->i:I

    sget v2, Lccc71/bmw/lib/bmw_watcher;->aa:I

    if-ge v0, v2, :cond_23

    sget-boolean v0, Lccc71/bmw/lib/bmw_watcher;->X:Z

    if-nez v0, :cond_b

    sput-boolean v7, Lccc71/bmw/lib/bmw_watcher;->X:Z

    const-string v0, "battery_widget_monitor"

    const-string v2, "bmw_watcher voltage too low alam!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lccc71/bmw/lib/bmw_watcher;->C:Lccc71/bmw/lib/bmw_watcher;

    sget-object v0, Lccc71/bmw/lib/bmw_watcher;->R:Ljava/lang/String;

    sget v2, Lccc71/bmw/lib/g;->by:I

    invoke-static {p1, v0, v2}, Lccc71/bmw/lib/bmw_watcher;->a(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_5

    :cond_23
    sput-boolean v1, Lccc71/bmw/lib/bmw_watcher;->W:Z

    sput-boolean v1, Lccc71/bmw/lib/bmw_watcher;->X:Z

    goto/16 :goto_5

    :cond_24
    sput-boolean v1, Lccc71/bmw/lib/bmw_watcher;->Y:Z

    goto/16 :goto_6

    .line 1872
    :cond_25
    sput-boolean v7, Lccc71/bmw/lib/bmw_watcher;->d:Z

    goto/16 :goto_7

    .line 1874
    :cond_26
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 1876
    sput-boolean v1, Lccc71/bmw/lib/bmw_watcher;->c:Z

    .line 1877
    sget-wide v0, Lccc71/bmw/lib/bmw_watcher;->a:J

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sget-wide v4, Lccc71/bmw/lib/bmw_watcher;->b:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    sput-wide v0, Lccc71/bmw/lib/bmw_watcher;->a:J

    .line 1879
    sget-boolean v0, Lccc71/bmw/lib/bmw_watcher;->H:Z

    if-eqz v0, :cond_e

    .line 1880
    invoke-static {}, Lccc71/bmw/lib/bmw_scheduler;->b()V

    goto/16 :goto_7

    .line 1882
    :cond_27
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 1884
    sput-boolean v7, Lccc71/bmw/lib/bmw_watcher;->c:Z

    .line 1885
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sput-wide v2, Lccc71/bmw/lib/bmw_watcher;->b:J

    .line 1887
    sget-boolean v0, Lccc71/bmw/lib/bmw_watcher;->H:Z

    if-eqz v0, :cond_2a

    .line 1889
    invoke-static {p1}, Lccc71/bmw/lib/bmw_scheduler;->a(Landroid/content/Context;)V

    .line 1890
    sget-boolean v0, Lccc71/bmw/lib/bmw_watcher;->d:Z

    if-eqz v0, :cond_29

    .line 1892
    const-string v0, "battery_widget_monitor"

    const-string v2, "Refreshing data on SCREEN ON"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1893
    invoke-static {p1, v1}, Lccc71/bmw/lib/bmw_widget;->a(Landroid/content/Context;Z)V

    .line 1907
    :cond_28
    :goto_c
    sput-boolean v1, Lccc71/bmw/lib/bmw_watcher;->d:Z

    .line 1910
    :cond_29
    invoke-static {p1}, Lccc71/bmw/lib/bmw_watcher;->h(Landroid/content/Context;)V

    goto/16 :goto_7

    .line 1899
    :cond_2a
    sget-boolean v0, Lccc71/bmw/lib/bmw_watcher;->d:Z

    if-eqz v0, :cond_29

    .line 1901
    const-string v0, "battery_widget_monitor"

    const-string v2, "Refreshing data on SCREEN ON"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1902
    invoke-static {p1, v1}, Lccc71/bmw/lib/bmw_widget;->a(Landroid/content/Context;Z)V

    .line 1903
    sget-object v0, Lccc71/bmw/lib/bmw_status;->a:Lccc71/bmw/lib/ed;

    if-eqz v0, :cond_2b

    .line 1904
    sget-object v0, Lccc71/bmw/lib/bmw_status;->a:Lccc71/bmw/lib/ed;

    invoke-virtual {v0, v7}, Lccc71/bmw/lib/ed;->sendEmptyMessage(I)Z

    .line 1905
    :cond_2b
    sget-object v0, Lccc71/bmw/lib/bmw_estimates;->a:Lccc71/bmw/lib/an;

    if-eqz v0, :cond_28

    .line 1906
    sget-object v0, Lccc71/bmw/lib/bmw_estimates;->a:Lccc71/bmw/lib/an;

    invoke-virtual {v0, v1}, Lccc71/bmw/lib/an;->sendEmptyMessage(I)Z

    goto :goto_c

    .line 1912
    :cond_2c
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 1914
    invoke-static {p1}, Lccc71/bmw/lib/bmw_service;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 1915
    invoke-static {p1}, Lccc71/bmw/lib/bmw_service;->b(Landroid/content/Context;)V

    .line 1917
    :cond_2d
    invoke-static {p1}, Lccc71/bmw/lib/bmw_settings;->L(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1918
    sget v0, Lccc71/bmw/lib/g;->bG:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, -0x55555501

    invoke-static {p1, v0, v1, v7}, Lccc71/bmw/data/a/e;->a(Landroid/content/Context;Ljava/lang/String;IZ)V

    goto/16 :goto_7

    .line 1920
    :cond_2e
    sget-boolean v1, Lccc71/bmw/lib/bmw_watcher;->e:Z

    if-nez v1, :cond_2f

    sget v1, Lccc71/bmw/lib/bmw_watcher;->h:I

    const/4 v2, 0x2

    if-gt v1, v2, :cond_e

    :cond_2f
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1922
    invoke-static {p1}, Lccc71/bmw/lib/bmw_settings;->a(Landroid/content/Context;)Lccc71/bmw/data/a;

    move-result-object v0

    .line 1923
    sget v1, Lccc71/bmw/lib/bmw_watcher;->j:I

    if-nez v1, :cond_30

    .line 1925
    invoke-static {v0}, Lccc71/bmw/lib/bmw_watcher;->c(Lccc71/bmw/data/a;)V

    .line 1932
    :goto_d
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iput-wide v1, v0, Lccc71/bmw/data/a;->a:J

    .line 1933
    sget v1, Lccc71/bmw/lib/bmw_watcher;->h:I

    iput v1, v0, Lccc71/bmw/data/a;->b:I

    .line 1934
    iput v8, v0, Lccc71/bmw/data/a;->c:I

    .line 1935
    invoke-static {p1, v0}, Lccc71/bmw/lib/bmw_settings;->a(Landroid/content/Context;Lccc71/bmw/data/a;)V

    .line 1939
    sget v0, Lccc71/bmw/lib/bmw_watcher;->h:I

    if-eq v0, v8, :cond_e

    .line 1941
    new-instance v0, Lccc71/bmw/lib/bi;

    invoke-direct {v0, p1}, Lccc71/bmw/lib/bi;-><init>(Landroid/content/Context;)V

    .line 1942
    invoke-static {}, Lccc71/bmw/lib/bi;->a()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1943
    sget v1, Lccc71/bmw/lib/bmw_watcher;->f:I

    invoke-virtual {v0, v1}, Lccc71/bmw/lib/bi;->a(I)V

    goto/16 :goto_7

    .line 1929
    :cond_30
    sget v1, Lccc71/bmw/lib/bmw_watcher;->j:I

    invoke-static {v0, v1}, Lccc71/bmw/lib/bmw_watcher;->b(Lccc71/bmw/data/a;I)V

    goto :goto_d

    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 1732
    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method
