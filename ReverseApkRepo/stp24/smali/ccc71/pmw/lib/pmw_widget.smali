.class public Lccc71/pmw/lib/pmw_widget;
.super Landroid/appwidget/AppWidgetProvider;
.source "SourceFile"


# static fields
.field private static A:Z

.field private static B:Ljava/lang/String;

.field private static C:Z

.field private static D:Ljava/lang/String;

.field private static E:Z

.field private static F:Ljava/lang/String;

.field private static G:[I

.field private static H:[I

.field protected static a:Lccc71/pmw/a/ah;

.field protected static b:I

.field protected static c:I

.field protected static d:I

.field protected static e:I

.field protected static f:I

.field protected static g:I

.field protected static h:I

.field protected static i:I

.field protected static j:[[I

.field protected static k:[I

.field protected static l:[I

.field protected static m:[I

.field protected static n:[I

.field public static o:[I

.field private static p:Landroid/appwidget/AppWidgetManager;

.field private static q:Ljava/util/ArrayList;

.field private static r:Ljava/util/ArrayList;

.field private static s:Ljava/util/HashMap;

.field private static t:Lccc71/pmw/b/u;

.field private static u:Lccc71/pmw/b/k;

.field private static v:Lccc71/pmw/b/q;

.field private static w:Z

.field private static x:Z

.field private static y:Z

.field private static z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 28
    const/4 v0, 0x0

    sput-object v0, Lccc71/pmw/lib/pmw_widget;->p:Landroid/appwidget/AppWidgetManager;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lccc71/pmw/lib/pmw_widget;->q:Ljava/util/ArrayList;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lccc71/pmw/lib/pmw_widget;->r:Ljava/util/ArrayList;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lccc71/pmw/lib/pmw_widget;->s:Ljava/util/HashMap;

    .line 33
    const/4 v0, 0x0

    sput-object v0, Lccc71/pmw/lib/pmw_widget;->t:Lccc71/pmw/b/u;

    .line 34
    const/4 v0, 0x0

    sput-object v0, Lccc71/pmw/lib/pmw_widget;->u:Lccc71/pmw/b/k;

    .line 35
    const/4 v0, 0x0

    sput-object v0, Lccc71/pmw/lib/pmw_widget;->v:Lccc71/pmw/b/q;

    .line 36
    const/4 v0, 0x0

    sput-object v0, Lccc71/pmw/lib/pmw_widget;->a:Lccc71/pmw/a/ah;

    .line 62
    sput v4, Lccc71/pmw/lib/pmw_widget;->i:I

    .line 64
    new-array v0, v8, [I

    .line 65
    sget v1, Lccc71/pmw/lib/e;->by:I

    aput v1, v0, v4

    .line 66
    sget v1, Lccc71/pmw/lib/e;->bF:I

    aput v1, v0, v5

    .line 67
    sget v1, Lccc71/pmw/lib/e;->bD:I

    aput v1, v0, v6

    .line 68
    sget v1, Lccc71/pmw/lib/e;->bA:I

    aput v1, v0, v7

    .line 64
    sput-object v0, Lccc71/pmw/lib/pmw_widget;->G:[I

    .line 71
    new-array v0, v8, [I

    .line 72
    sget v1, Lccc71/pmw/lib/e;->bH:I

    aput v1, v0, v4

    .line 73
    sget v1, Lccc71/pmw/lib/e;->bG:I

    aput v1, v0, v5

    .line 74
    sget v1, Lccc71/pmw/lib/e;->bE:I

    aput v1, v0, v6

    .line 75
    sget v1, Lccc71/pmw/lib/e;->bB:I

    aput v1, v0, v7

    .line 71
    sput-object v0, Lccc71/pmw/lib/pmw_widget;->H:[I

    .line 78
    new-array v0, v8, [[I

    .line 79
    const/16 v1, 0xd

    new-array v1, v1, [I

    sget v2, Lccc71/pmw/lib/c;->aV:I

    aput v2, v1, v4

    sget v2, Lccc71/pmw/lib/c;->bP:I

    aput v2, v1, v5

    sget v2, Lccc71/pmw/lib/c;->bL:I

    aput v2, v1, v6

    sget v2, Lccc71/pmw/lib/c;->bO:I

    aput v2, v1, v7

    sget v2, Lccc71/pmw/lib/c;->bt:I

    aput v2, v1, v8

    const/4 v2, 0x5

    sget v3, Lccc71/pmw/lib/c;->bt:I

    aput v3, v1, v2

    const/4 v2, 0x6

    sget v3, Lccc71/pmw/lib/c;->aW:I

    aput v3, v1, v2

    const/4 v2, 0x7

    sget v3, Lccc71/pmw/lib/c;->bM:I

    aput v3, v1, v2

    const/16 v2, 0x8

    sget v3, Lccc71/pmw/lib/c;->bt:I

    aput v3, v1, v2

    const/16 v2, 0x9

    sget v3, Lccc71/pmw/lib/c;->bf:I

    aput v3, v1, v2

    const/16 v2, 0xa

    sget v3, Lccc71/pmw/lib/c;->bh:I

    aput v3, v1, v2

    const/16 v2, 0xb

    sget v3, Lccc71/pmw/lib/c;->bg:I

    aput v3, v1, v2

    const/16 v2, 0xc

    sget v3, Lccc71/pmw/lib/c;->bN:I

    aput v3, v1, v2

    aput-object v1, v0, v4

    .line 80
    const/16 v1, 0xd

    new-array v1, v1, [I

    sget v2, Lccc71/pmw/lib/c;->bD:I

    aput v2, v1, v4

    sget v2, Lccc71/pmw/lib/c;->bK:I

    aput v2, v1, v5

    sget v2, Lccc71/pmw/lib/c;->bG:I

    aput v2, v1, v6

    sget v2, Lccc71/pmw/lib/c;->bJ:I

    aput v2, v1, v7

    sget v2, Lccc71/pmw/lib/c;->bA:I

    aput v2, v1, v8

    const/4 v2, 0x5

    sget v3, Lccc71/pmw/lib/c;->bC:I

    aput v3, v1, v2

    const/4 v2, 0x6

    sget v3, Lccc71/pmw/lib/c;->bE:I

    aput v3, v1, v2

    const/4 v2, 0x7

    sget v3, Lccc71/pmw/lib/c;->bH:I

    aput v3, v1, v2

    const/16 v2, 0x8

    sget v3, Lccc71/pmw/lib/c;->bB:I

    aput v3, v1, v2

    const/16 v2, 0x9

    sget v3, Lccc71/pmw/lib/c;->bf:I

    aput v3, v1, v2

    const/16 v2, 0xa

    sget v3, Lccc71/pmw/lib/c;->bF:I

    aput v3, v1, v2

    const/16 v2, 0xb

    sget v3, Lccc71/pmw/lib/c;->bg:I

    aput v3, v1, v2

    const/16 v2, 0xc

    sget v3, Lccc71/pmw/lib/c;->bI:I

    aput v3, v1, v2

    aput-object v1, v0, v5

    .line 81
    const/16 v1, 0xd

    new-array v1, v1, [I

    sget v2, Lccc71/pmw/lib/c;->bl:I

    aput v2, v1, v4

    sget v2, Lccc71/pmw/lib/c;->bs:I

    aput v2, v1, v5

    sget v2, Lccc71/pmw/lib/c;->bo:I

    aput v2, v1, v6

    sget v2, Lccc71/pmw/lib/c;->br:I

    aput v2, v1, v7

    sget v2, Lccc71/pmw/lib/c;->bx:I

    aput v2, v1, v8

    const/4 v2, 0x5

    sget v3, Lccc71/pmw/lib/c;->bz:I

    aput v3, v1, v2

    const/4 v2, 0x6

    sget v3, Lccc71/pmw/lib/c;->bm:I

    aput v3, v1, v2

    const/4 v2, 0x7

    sget v3, Lccc71/pmw/lib/c;->bp:I

    aput v3, v1, v2

    const/16 v2, 0x8

    sget v3, Lccc71/pmw/lib/c;->by:I

    aput v3, v1, v2

    const/16 v2, 0x9

    sget v3, Lccc71/pmw/lib/c;->bf:I

    aput v3, v1, v2

    const/16 v2, 0xa

    sget v3, Lccc71/pmw/lib/c;->bn:I

    aput v3, v1, v2

    const/16 v2, 0xb

    sget v3, Lccc71/pmw/lib/c;->bg:I

    aput v3, v1, v2

    const/16 v2, 0xc

    sget v3, Lccc71/pmw/lib/c;->bq:I

    aput v3, v1, v2

    aput-object v1, v0, v6

    .line 82
    const/16 v1, 0xd

    new-array v1, v1, [I

    sget v2, Lccc71/pmw/lib/c;->aX:I

    aput v2, v1, v4

    sget v2, Lccc71/pmw/lib/c;->be:I

    aput v2, v1, v5

    sget v2, Lccc71/pmw/lib/c;->ba:I

    aput v2, v1, v6

    sget v2, Lccc71/pmw/lib/c;->bd:I

    aput v2, v1, v7

    sget v2, Lccc71/pmw/lib/c;->bu:I

    aput v2, v1, v8

    const/4 v2, 0x5

    sget v3, Lccc71/pmw/lib/c;->bw:I

    aput v3, v1, v2

    const/4 v2, 0x6

    sget v3, Lccc71/pmw/lib/c;->aY:I

    aput v3, v1, v2

    const/4 v2, 0x7

    sget v3, Lccc71/pmw/lib/c;->bb:I

    aput v3, v1, v2

    const/16 v2, 0x8

    sget v3, Lccc71/pmw/lib/c;->bv:I

    aput v3, v1, v2

    const/16 v2, 0x9

    sget v3, Lccc71/pmw/lib/c;->bf:I

    aput v3, v1, v2

    const/16 v2, 0xa

    sget v3, Lccc71/pmw/lib/c;->aZ:I

    aput v3, v1, v2

    const/16 v2, 0xb

    sget v3, Lccc71/pmw/lib/c;->bg:I

    aput v3, v1, v2

    const/16 v2, 0xc

    sget v3, Lccc71/pmw/lib/c;->bc:I

    aput v3, v1, v2

    aput-object v1, v0, v7

    .line 78
    sput-object v0, Lccc71/pmw/lib/pmw_widget;->j:[[I

    .line 85
    const/16 v0, 0x65

    new-array v0, v0, [I

    .line 86
    sget v1, Lccc71/pmw/lib/d;->gw:I

    aput v1, v0, v4

    sget v1, Lccc71/pmw/lib/d;->gx:I

    aput v1, v0, v5

    sget v1, Lccc71/pmw/lib/d;->gy:I

    aput v1, v0, v6

    sget v1, Lccc71/pmw/lib/d;->gz:I

    aput v1, v0, v7

    sget v1, Lccc71/pmw/lib/d;->gA:I

    aput v1, v0, v8

    const/4 v1, 0x5

    .line 87
    sget v2, Lccc71/pmw/lib/d;->gB:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lccc71/pmw/lib/d;->gC:I

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lccc71/pmw/lib/d;->gD:I

    aput v2, v0, v1

    const/16 v1, 0x8

    sget v2, Lccc71/pmw/lib/d;->gE:I

    aput v2, v0, v1

    const/16 v1, 0x9

    sget v2, Lccc71/pmw/lib/d;->gF:I

    aput v2, v0, v1

    const/16 v1, 0xa

    .line 88
    sget v2, Lccc71/pmw/lib/d;->gG:I

    aput v2, v0, v1

    const/16 v1, 0xb

    sget v2, Lccc71/pmw/lib/d;->gI:I

    aput v2, v0, v1

    const/16 v1, 0xc

    sget v2, Lccc71/pmw/lib/d;->gJ:I

    aput v2, v0, v1

    const/16 v1, 0xd

    sget v2, Lccc71/pmw/lib/d;->gK:I

    aput v2, v0, v1

    const/16 v1, 0xe

    sget v2, Lccc71/pmw/lib/d;->gL:I

    aput v2, v0, v1

    const/16 v1, 0xf

    .line 89
    sget v2, Lccc71/pmw/lib/d;->gM:I

    aput v2, v0, v1

    const/16 v1, 0x10

    sget v2, Lccc71/pmw/lib/d;->gN:I

    aput v2, v0, v1

    const/16 v1, 0x11

    sget v2, Lccc71/pmw/lib/d;->gO:I

    aput v2, v0, v1

    const/16 v1, 0x12

    sget v2, Lccc71/pmw/lib/d;->gP:I

    aput v2, v0, v1

    const/16 v1, 0x13

    sget v2, Lccc71/pmw/lib/d;->gQ:I

    aput v2, v0, v1

    const/16 v1, 0x14

    .line 90
    sget v2, Lccc71/pmw/lib/d;->gR:I

    aput v2, v0, v1

    const/16 v1, 0x15

    sget v2, Lccc71/pmw/lib/d;->gS:I

    aput v2, v0, v1

    const/16 v1, 0x16

    sget v2, Lccc71/pmw/lib/d;->gT:I

    aput v2, v0, v1

    const/16 v1, 0x17

    sget v2, Lccc71/pmw/lib/d;->gU:I

    aput v2, v0, v1

    const/16 v1, 0x18

    sget v2, Lccc71/pmw/lib/d;->gV:I

    aput v2, v0, v1

    const/16 v1, 0x19

    .line 91
    sget v2, Lccc71/pmw/lib/d;->gW:I

    aput v2, v0, v1

    const/16 v1, 0x1a

    sget v2, Lccc71/pmw/lib/d;->gX:I

    aput v2, v0, v1

    const/16 v1, 0x1b

    sget v2, Lccc71/pmw/lib/d;->gY:I

    aput v2, v0, v1

    const/16 v1, 0x1c

    sget v2, Lccc71/pmw/lib/d;->gZ:I

    aput v2, v0, v1

    const/16 v1, 0x1d

    sget v2, Lccc71/pmw/lib/d;->ha:I

    aput v2, v0, v1

    const/16 v1, 0x1e

    .line 92
    sget v2, Lccc71/pmw/lib/d;->hb:I

    aput v2, v0, v1

    const/16 v1, 0x1f

    sget v2, Lccc71/pmw/lib/d;->hc:I

    aput v2, v0, v1

    const/16 v1, 0x20

    sget v2, Lccc71/pmw/lib/d;->hd:I

    aput v2, v0, v1

    const/16 v1, 0x21

    sget v2, Lccc71/pmw/lib/d;->he:I

    aput v2, v0, v1

    const/16 v1, 0x22

    sget v2, Lccc71/pmw/lib/d;->hf:I

    aput v2, v0, v1

    const/16 v1, 0x23

    .line 93
    sget v2, Lccc71/pmw/lib/d;->hg:I

    aput v2, v0, v1

    const/16 v1, 0x24

    sget v2, Lccc71/pmw/lib/d;->hh:I

    aput v2, v0, v1

    const/16 v1, 0x25

    sget v2, Lccc71/pmw/lib/d;->hi:I

    aput v2, v0, v1

    const/16 v1, 0x26

    sget v2, Lccc71/pmw/lib/d;->hj:I

    aput v2, v0, v1

    const/16 v1, 0x27

    sget v2, Lccc71/pmw/lib/d;->hk:I

    aput v2, v0, v1

    const/16 v1, 0x28

    .line 94
    sget v2, Lccc71/pmw/lib/d;->hl:I

    aput v2, v0, v1

    const/16 v1, 0x29

    sget v2, Lccc71/pmw/lib/d;->hm:I

    aput v2, v0, v1

    const/16 v1, 0x2a

    sget v2, Lccc71/pmw/lib/d;->hn:I

    aput v2, v0, v1

    const/16 v1, 0x2b

    sget v2, Lccc71/pmw/lib/d;->ho:I

    aput v2, v0, v1

    const/16 v1, 0x2c

    sget v2, Lccc71/pmw/lib/d;->hp:I

    aput v2, v0, v1

    const/16 v1, 0x2d

    .line 95
    sget v2, Lccc71/pmw/lib/d;->hq:I

    aput v2, v0, v1

    const/16 v1, 0x2e

    sget v2, Lccc71/pmw/lib/d;->hr:I

    aput v2, v0, v1

    const/16 v1, 0x2f

    sget v2, Lccc71/pmw/lib/d;->hs:I

    aput v2, v0, v1

    const/16 v1, 0x30

    sget v2, Lccc71/pmw/lib/d;->ht:I

    aput v2, v0, v1

    const/16 v1, 0x31

    sget v2, Lccc71/pmw/lib/d;->hu:I

    aput v2, v0, v1

    const/16 v1, 0x32

    .line 96
    sget v2, Lccc71/pmw/lib/d;->hv:I

    aput v2, v0, v1

    const/16 v1, 0x33

    sget v2, Lccc71/pmw/lib/d;->hw:I

    aput v2, v0, v1

    const/16 v1, 0x34

    sget v2, Lccc71/pmw/lib/d;->hx:I

    aput v2, v0, v1

    const/16 v1, 0x35

    sget v2, Lccc71/pmw/lib/d;->hy:I

    aput v2, v0, v1

    const/16 v1, 0x36

    sget v2, Lccc71/pmw/lib/d;->hz:I

    aput v2, v0, v1

    const/16 v1, 0x37

    .line 97
    sget v2, Lccc71/pmw/lib/d;->hA:I

    aput v2, v0, v1

    const/16 v1, 0x38

    sget v2, Lccc71/pmw/lib/d;->hB:I

    aput v2, v0, v1

    const/16 v1, 0x39

    sget v2, Lccc71/pmw/lib/d;->hC:I

    aput v2, v0, v1

    const/16 v1, 0x3a

    sget v2, Lccc71/pmw/lib/d;->hD:I

    aput v2, v0, v1

    const/16 v1, 0x3b

    sget v2, Lccc71/pmw/lib/d;->hE:I

    aput v2, v0, v1

    const/16 v1, 0x3c

    .line 98
    sget v2, Lccc71/pmw/lib/d;->hF:I

    aput v2, v0, v1

    const/16 v1, 0x3d

    sget v2, Lccc71/pmw/lib/d;->hG:I

    aput v2, v0, v1

    const/16 v1, 0x3e

    sget v2, Lccc71/pmw/lib/d;->hH:I

    aput v2, v0, v1

    const/16 v1, 0x3f

    sget v2, Lccc71/pmw/lib/d;->hI:I

    aput v2, v0, v1

    const/16 v1, 0x40

    sget v2, Lccc71/pmw/lib/d;->hJ:I

    aput v2, v0, v1

    const/16 v1, 0x41

    .line 99
    sget v2, Lccc71/pmw/lib/d;->hK:I

    aput v2, v0, v1

    const/16 v1, 0x42

    sget v2, Lccc71/pmw/lib/d;->hL:I

    aput v2, v0, v1

    const/16 v1, 0x43

    sget v2, Lccc71/pmw/lib/d;->hM:I

    aput v2, v0, v1

    const/16 v1, 0x44

    sget v2, Lccc71/pmw/lib/d;->hN:I

    aput v2, v0, v1

    const/16 v1, 0x45

    sget v2, Lccc71/pmw/lib/d;->hO:I

    aput v2, v0, v1

    const/16 v1, 0x46

    .line 100
    sget v2, Lccc71/pmw/lib/d;->hP:I

    aput v2, v0, v1

    const/16 v1, 0x47

    sget v2, Lccc71/pmw/lib/d;->hQ:I

    aput v2, v0, v1

    const/16 v1, 0x48

    sget v2, Lccc71/pmw/lib/d;->hR:I

    aput v2, v0, v1

    const/16 v1, 0x49

    sget v2, Lccc71/pmw/lib/d;->hS:I

    aput v2, v0, v1

    const/16 v1, 0x4a

    sget v2, Lccc71/pmw/lib/d;->hT:I

    aput v2, v0, v1

    const/16 v1, 0x4b

    .line 101
    sget v2, Lccc71/pmw/lib/d;->hU:I

    aput v2, v0, v1

    const/16 v1, 0x4c

    sget v2, Lccc71/pmw/lib/d;->hV:I

    aput v2, v0, v1

    const/16 v1, 0x4d

    sget v2, Lccc71/pmw/lib/d;->hW:I

    aput v2, v0, v1

    const/16 v1, 0x4e

    sget v2, Lccc71/pmw/lib/d;->hX:I

    aput v2, v0, v1

    const/16 v1, 0x4f

    sget v2, Lccc71/pmw/lib/d;->hY:I

    aput v2, v0, v1

    const/16 v1, 0x50

    .line 102
    sget v2, Lccc71/pmw/lib/d;->hZ:I

    aput v2, v0, v1

    const/16 v1, 0x51

    sget v2, Lccc71/pmw/lib/d;->ia:I

    aput v2, v0, v1

    const/16 v1, 0x52

    sget v2, Lccc71/pmw/lib/d;->ib:I

    aput v2, v0, v1

    const/16 v1, 0x53

    sget v2, Lccc71/pmw/lib/d;->ic:I

    aput v2, v0, v1

    const/16 v1, 0x54

    sget v2, Lccc71/pmw/lib/d;->id:I

    aput v2, v0, v1

    const/16 v1, 0x55

    .line 103
    sget v2, Lccc71/pmw/lib/d;->ie:I

    aput v2, v0, v1

    const/16 v1, 0x56

    sget v2, Lccc71/pmw/lib/d;->if:I

    aput v2, v0, v1

    const/16 v1, 0x57

    sget v2, Lccc71/pmw/lib/d;->ig:I

    aput v2, v0, v1

    const/16 v1, 0x58

    sget v2, Lccc71/pmw/lib/d;->ih:I

    aput v2, v0, v1

    const/16 v1, 0x59

    sget v2, Lccc71/pmw/lib/d;->ii:I

    aput v2, v0, v1

    const/16 v1, 0x5a

    .line 104
    sget v2, Lccc71/pmw/lib/d;->ij:I

    aput v2, v0, v1

    const/16 v1, 0x5b

    sget v2, Lccc71/pmw/lib/d;->ik:I

    aput v2, v0, v1

    const/16 v1, 0x5c

    sget v2, Lccc71/pmw/lib/d;->il:I

    aput v2, v0, v1

    const/16 v1, 0x5d

    sget v2, Lccc71/pmw/lib/d;->im:I

    aput v2, v0, v1

    const/16 v1, 0x5e

    sget v2, Lccc71/pmw/lib/d;->in:I

    aput v2, v0, v1

    const/16 v1, 0x5f

    .line 105
    sget v2, Lccc71/pmw/lib/d;->io:I

    aput v2, v0, v1

    const/16 v1, 0x60

    sget v2, Lccc71/pmw/lib/d;->ip:I

    aput v2, v0, v1

    const/16 v1, 0x61

    sget v2, Lccc71/pmw/lib/d;->iq:I

    aput v2, v0, v1

    const/16 v1, 0x62

    sget v2, Lccc71/pmw/lib/d;->ir:I

    aput v2, v0, v1

    const/16 v1, 0x63

    sget v2, Lccc71/pmw/lib/d;->is:I

    aput v2, v0, v1

    const/16 v1, 0x64

    .line 106
    sget v2, Lccc71/pmw/lib/d;->gH:I

    aput v2, v0, v1

    .line 85
    sput-object v0, Lccc71/pmw/lib/pmw_widget;->k:[I

    .line 109
    const/16 v0, 0x65

    new-array v0, v0, [I

    .line 110
    sget v1, Lccc71/pmw/lib/d;->bD:I

    aput v1, v0, v4

    sget v1, Lccc71/pmw/lib/d;->bE:I

    aput v1, v0, v5

    sget v1, Lccc71/pmw/lib/d;->bF:I

    aput v1, v0, v6

    sget v1, Lccc71/pmw/lib/d;->bG:I

    aput v1, v0, v7

    sget v1, Lccc71/pmw/lib/d;->bH:I

    aput v1, v0, v8

    const/4 v1, 0x5

    .line 111
    sget v2, Lccc71/pmw/lib/d;->bI:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lccc71/pmw/lib/d;->bJ:I

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lccc71/pmw/lib/d;->bK:I

    aput v2, v0, v1

    const/16 v1, 0x8

    sget v2, Lccc71/pmw/lib/d;->bL:I

    aput v2, v0, v1

    const/16 v1, 0x9

    sget v2, Lccc71/pmw/lib/d;->bM:I

    aput v2, v0, v1

    const/16 v1, 0xa

    .line 112
    sget v2, Lccc71/pmw/lib/d;->bN:I

    aput v2, v0, v1

    const/16 v1, 0xb

    sget v2, Lccc71/pmw/lib/d;->bP:I

    aput v2, v0, v1

    const/16 v1, 0xc

    sget v2, Lccc71/pmw/lib/d;->bQ:I

    aput v2, v0, v1

    const/16 v1, 0xd

    sget v2, Lccc71/pmw/lib/d;->bR:I

    aput v2, v0, v1

    const/16 v1, 0xe

    sget v2, Lccc71/pmw/lib/d;->bS:I

    aput v2, v0, v1

    const/16 v1, 0xf

    .line 113
    sget v2, Lccc71/pmw/lib/d;->bT:I

    aput v2, v0, v1

    const/16 v1, 0x10

    sget v2, Lccc71/pmw/lib/d;->bU:I

    aput v2, v0, v1

    const/16 v1, 0x11

    sget v2, Lccc71/pmw/lib/d;->bV:I

    aput v2, v0, v1

    const/16 v1, 0x12

    sget v2, Lccc71/pmw/lib/d;->bW:I

    aput v2, v0, v1

    const/16 v1, 0x13

    sget v2, Lccc71/pmw/lib/d;->bX:I

    aput v2, v0, v1

    const/16 v1, 0x14

    .line 114
    sget v2, Lccc71/pmw/lib/d;->bY:I

    aput v2, v0, v1

    const/16 v1, 0x15

    sget v2, Lccc71/pmw/lib/d;->bZ:I

    aput v2, v0, v1

    const/16 v1, 0x16

    sget v2, Lccc71/pmw/lib/d;->ca:I

    aput v2, v0, v1

    const/16 v1, 0x17

    sget v2, Lccc71/pmw/lib/d;->cb:I

    aput v2, v0, v1

    const/16 v1, 0x18

    sget v2, Lccc71/pmw/lib/d;->cc:I

    aput v2, v0, v1

    const/16 v1, 0x19

    .line 115
    sget v2, Lccc71/pmw/lib/d;->cd:I

    aput v2, v0, v1

    const/16 v1, 0x1a

    sget v2, Lccc71/pmw/lib/d;->ce:I

    aput v2, v0, v1

    const/16 v1, 0x1b

    sget v2, Lccc71/pmw/lib/d;->cf:I

    aput v2, v0, v1

    const/16 v1, 0x1c

    sget v2, Lccc71/pmw/lib/d;->cg:I

    aput v2, v0, v1

    const/16 v1, 0x1d

    sget v2, Lccc71/pmw/lib/d;->ch:I

    aput v2, v0, v1

    const/16 v1, 0x1e

    .line 116
    sget v2, Lccc71/pmw/lib/d;->ci:I

    aput v2, v0, v1

    const/16 v1, 0x1f

    sget v2, Lccc71/pmw/lib/d;->cj:I

    aput v2, v0, v1

    const/16 v1, 0x20

    sget v2, Lccc71/pmw/lib/d;->ck:I

    aput v2, v0, v1

    const/16 v1, 0x21

    sget v2, Lccc71/pmw/lib/d;->cl:I

    aput v2, v0, v1

    const/16 v1, 0x22

    sget v2, Lccc71/pmw/lib/d;->cm:I

    aput v2, v0, v1

    const/16 v1, 0x23

    .line 117
    sget v2, Lccc71/pmw/lib/d;->cn:I

    aput v2, v0, v1

    const/16 v1, 0x24

    sget v2, Lccc71/pmw/lib/d;->co:I

    aput v2, v0, v1

    const/16 v1, 0x25

    sget v2, Lccc71/pmw/lib/d;->cp:I

    aput v2, v0, v1

    const/16 v1, 0x26

    sget v2, Lccc71/pmw/lib/d;->cq:I

    aput v2, v0, v1

    const/16 v1, 0x27

    sget v2, Lccc71/pmw/lib/d;->cr:I

    aput v2, v0, v1

    const/16 v1, 0x28

    .line 118
    sget v2, Lccc71/pmw/lib/d;->cs:I

    aput v2, v0, v1

    const/16 v1, 0x29

    sget v2, Lccc71/pmw/lib/d;->ct:I

    aput v2, v0, v1

    const/16 v1, 0x2a

    sget v2, Lccc71/pmw/lib/d;->cu:I

    aput v2, v0, v1

    const/16 v1, 0x2b

    sget v2, Lccc71/pmw/lib/d;->cv:I

    aput v2, v0, v1

    const/16 v1, 0x2c

    sget v2, Lccc71/pmw/lib/d;->cw:I

    aput v2, v0, v1

    const/16 v1, 0x2d

    .line 119
    sget v2, Lccc71/pmw/lib/d;->cx:I

    aput v2, v0, v1

    const/16 v1, 0x2e

    sget v2, Lccc71/pmw/lib/d;->cy:I

    aput v2, v0, v1

    const/16 v1, 0x2f

    sget v2, Lccc71/pmw/lib/d;->cz:I

    aput v2, v0, v1

    const/16 v1, 0x30

    sget v2, Lccc71/pmw/lib/d;->cA:I

    aput v2, v0, v1

    const/16 v1, 0x31

    sget v2, Lccc71/pmw/lib/d;->cB:I

    aput v2, v0, v1

    const/16 v1, 0x32

    .line 120
    sget v2, Lccc71/pmw/lib/d;->cC:I

    aput v2, v0, v1

    const/16 v1, 0x33

    sget v2, Lccc71/pmw/lib/d;->cD:I

    aput v2, v0, v1

    const/16 v1, 0x34

    sget v2, Lccc71/pmw/lib/d;->cE:I

    aput v2, v0, v1

    const/16 v1, 0x35

    sget v2, Lccc71/pmw/lib/d;->cF:I

    aput v2, v0, v1

    const/16 v1, 0x36

    sget v2, Lccc71/pmw/lib/d;->cG:I

    aput v2, v0, v1

    const/16 v1, 0x37

    .line 121
    sget v2, Lccc71/pmw/lib/d;->cH:I

    aput v2, v0, v1

    const/16 v1, 0x38

    sget v2, Lccc71/pmw/lib/d;->cI:I

    aput v2, v0, v1

    const/16 v1, 0x39

    sget v2, Lccc71/pmw/lib/d;->cJ:I

    aput v2, v0, v1

    const/16 v1, 0x3a

    sget v2, Lccc71/pmw/lib/d;->cK:I

    aput v2, v0, v1

    const/16 v1, 0x3b

    sget v2, Lccc71/pmw/lib/d;->cL:I

    aput v2, v0, v1

    const/16 v1, 0x3c

    .line 122
    sget v2, Lccc71/pmw/lib/d;->cM:I

    aput v2, v0, v1

    const/16 v1, 0x3d

    sget v2, Lccc71/pmw/lib/d;->cN:I

    aput v2, v0, v1

    const/16 v1, 0x3e

    sget v2, Lccc71/pmw/lib/d;->cO:I

    aput v2, v0, v1

    const/16 v1, 0x3f

    sget v2, Lccc71/pmw/lib/d;->cP:I

    aput v2, v0, v1

    const/16 v1, 0x40

    sget v2, Lccc71/pmw/lib/d;->cQ:I

    aput v2, v0, v1

    const/16 v1, 0x41

    .line 123
    sget v2, Lccc71/pmw/lib/d;->cR:I

    aput v2, v0, v1

    const/16 v1, 0x42

    sget v2, Lccc71/pmw/lib/d;->cS:I

    aput v2, v0, v1

    const/16 v1, 0x43

    sget v2, Lccc71/pmw/lib/d;->cT:I

    aput v2, v0, v1

    const/16 v1, 0x44

    sget v2, Lccc71/pmw/lib/d;->cU:I

    aput v2, v0, v1

    const/16 v1, 0x45

    sget v2, Lccc71/pmw/lib/d;->cV:I

    aput v2, v0, v1

    const/16 v1, 0x46

    .line 124
    sget v2, Lccc71/pmw/lib/d;->cW:I

    aput v2, v0, v1

    const/16 v1, 0x47

    sget v2, Lccc71/pmw/lib/d;->cX:I

    aput v2, v0, v1

    const/16 v1, 0x48

    sget v2, Lccc71/pmw/lib/d;->cY:I

    aput v2, v0, v1

    const/16 v1, 0x49

    sget v2, Lccc71/pmw/lib/d;->cZ:I

    aput v2, v0, v1

    const/16 v1, 0x4a

    sget v2, Lccc71/pmw/lib/d;->da:I

    aput v2, v0, v1

    const/16 v1, 0x4b

    .line 125
    sget v2, Lccc71/pmw/lib/d;->db:I

    aput v2, v0, v1

    const/16 v1, 0x4c

    sget v2, Lccc71/pmw/lib/d;->dc:I

    aput v2, v0, v1

    const/16 v1, 0x4d

    sget v2, Lccc71/pmw/lib/d;->dd:I

    aput v2, v0, v1

    const/16 v1, 0x4e

    sget v2, Lccc71/pmw/lib/d;->de:I

    aput v2, v0, v1

    const/16 v1, 0x4f

    sget v2, Lccc71/pmw/lib/d;->df:I

    aput v2, v0, v1

    const/16 v1, 0x50

    .line 126
    sget v2, Lccc71/pmw/lib/d;->dg:I

    aput v2, v0, v1

    const/16 v1, 0x51

    sget v2, Lccc71/pmw/lib/d;->dh:I

    aput v2, v0, v1

    const/16 v1, 0x52

    sget v2, Lccc71/pmw/lib/d;->di:I

    aput v2, v0, v1

    const/16 v1, 0x53

    sget v2, Lccc71/pmw/lib/d;->dj:I

    aput v2, v0, v1

    const/16 v1, 0x54

    sget v2, Lccc71/pmw/lib/d;->dk:I

    aput v2, v0, v1

    const/16 v1, 0x55

    .line 127
    sget v2, Lccc71/pmw/lib/d;->dl:I

    aput v2, v0, v1

    const/16 v1, 0x56

    sget v2, Lccc71/pmw/lib/d;->dm:I

    aput v2, v0, v1

    const/16 v1, 0x57

    sget v2, Lccc71/pmw/lib/d;->dn:I

    aput v2, v0, v1

    const/16 v1, 0x58

    sget v2, Lccc71/pmw/lib/d;->do:I

    aput v2, v0, v1

    const/16 v1, 0x59

    sget v2, Lccc71/pmw/lib/d;->dp:I

    aput v2, v0, v1

    const/16 v1, 0x5a

    .line 128
    sget v2, Lccc71/pmw/lib/d;->dq:I

    aput v2, v0, v1

    const/16 v1, 0x5b

    sget v2, Lccc71/pmw/lib/d;->dr:I

    aput v2, v0, v1

    const/16 v1, 0x5c

    sget v2, Lccc71/pmw/lib/d;->ds:I

    aput v2, v0, v1

    const/16 v1, 0x5d

    sget v2, Lccc71/pmw/lib/d;->dt:I

    aput v2, v0, v1

    const/16 v1, 0x5e

    sget v2, Lccc71/pmw/lib/d;->du:I

    aput v2, v0, v1

    const/16 v1, 0x5f

    .line 129
    sget v2, Lccc71/pmw/lib/d;->dv:I

    aput v2, v0, v1

    const/16 v1, 0x60

    sget v2, Lccc71/pmw/lib/d;->dw:I

    aput v2, v0, v1

    const/16 v1, 0x61

    sget v2, Lccc71/pmw/lib/d;->dx:I

    aput v2, v0, v1

    const/16 v1, 0x62

    sget v2, Lccc71/pmw/lib/d;->dy:I

    aput v2, v0, v1

    const/16 v1, 0x63

    sget v2, Lccc71/pmw/lib/d;->dz:I

    aput v2, v0, v1

    const/16 v1, 0x64

    .line 130
    sget v2, Lccc71/pmw/lib/d;->bO:I

    aput v2, v0, v1

    .line 109
    sput-object v0, Lccc71/pmw/lib/pmw_widget;->l:[I

    .line 134
    const/4 v0, 0x7

    new-array v0, v0, [I

    sget v1, Lccc71/pmw/lib/c;->ap:I

    aput v1, v0, v4

    sget v1, Lccc71/pmw/lib/c;->aq:I

    aput v1, v0, v5

    sget v1, Lccc71/pmw/lib/c;->ar:I

    aput v1, v0, v6

    sget v1, Lccc71/pmw/lib/c;->at:I

    aput v1, v0, v7

    sget v1, Lccc71/pmw/lib/c;->au:I

    aput v1, v0, v8

    const/4 v1, 0x5

    sget v2, Lccc71/pmw/lib/c;->as:I

    aput v2, v0, v1

    .line 133
    sput-object v0, Lccc71/pmw/lib/pmw_widget;->m:[I

    .line 137
    const/16 v0, 0x65

    new-array v0, v0, [I

    sget v1, Lccc71/pmw/lib/e;->d:I

    aput v1, v0, v4

    sget v1, Lccc71/pmw/lib/e;->e:I

    aput v1, v0, v5

    sget v1, Lccc71/pmw/lib/e;->f:I

    aput v1, v0, v6

    .line 138
    sget v1, Lccc71/pmw/lib/e;->g:I

    aput v1, v0, v7

    sget v1, Lccc71/pmw/lib/e;->h:I

    aput v1, v0, v8

    const/4 v1, 0x5

    sget v2, Lccc71/pmw/lib/e;->i:I

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 139
    sget v2, Lccc71/pmw/lib/e;->j:I

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lccc71/pmw/lib/e;->k:I

    aput v2, v0, v1

    const/16 v1, 0x8

    sget v2, Lccc71/pmw/lib/e;->l:I

    aput v2, v0, v1

    const/16 v1, 0x9

    .line 140
    sget v2, Lccc71/pmw/lib/e;->m:I

    aput v2, v0, v1

    const/16 v1, 0xa

    sget v2, Lccc71/pmw/lib/e;->n:I

    aput v2, v0, v1

    const/16 v1, 0xb

    sget v2, Lccc71/pmw/lib/e;->p:I

    aput v2, v0, v1

    const/16 v1, 0xc

    .line 141
    sget v2, Lccc71/pmw/lib/e;->q:I

    aput v2, v0, v1

    const/16 v1, 0xd

    sget v2, Lccc71/pmw/lib/e;->r:I

    aput v2, v0, v1

    const/16 v1, 0xe

    sget v2, Lccc71/pmw/lib/e;->s:I

    aput v2, v0, v1

    const/16 v1, 0xf

    .line 142
    sget v2, Lccc71/pmw/lib/e;->t:I

    aput v2, v0, v1

    const/16 v1, 0x10

    sget v2, Lccc71/pmw/lib/e;->u:I

    aput v2, v0, v1

    const/16 v1, 0x11

    sget v2, Lccc71/pmw/lib/e;->v:I

    aput v2, v0, v1

    const/16 v1, 0x12

    .line 143
    sget v2, Lccc71/pmw/lib/e;->w:I

    aput v2, v0, v1

    const/16 v1, 0x13

    sget v2, Lccc71/pmw/lib/e;->x:I

    aput v2, v0, v1

    const/16 v1, 0x14

    sget v2, Lccc71/pmw/lib/e;->y:I

    aput v2, v0, v1

    const/16 v1, 0x15

    .line 144
    sget v2, Lccc71/pmw/lib/e;->z:I

    aput v2, v0, v1

    const/16 v1, 0x16

    sget v2, Lccc71/pmw/lib/e;->A:I

    aput v2, v0, v1

    const/16 v1, 0x17

    sget v2, Lccc71/pmw/lib/e;->B:I

    aput v2, v0, v1

    const/16 v1, 0x18

    .line 145
    sget v2, Lccc71/pmw/lib/e;->C:I

    aput v2, v0, v1

    const/16 v1, 0x19

    sget v2, Lccc71/pmw/lib/e;->D:I

    aput v2, v0, v1

    const/16 v1, 0x1a

    sget v2, Lccc71/pmw/lib/e;->E:I

    aput v2, v0, v1

    const/16 v1, 0x1b

    .line 146
    sget v2, Lccc71/pmw/lib/e;->F:I

    aput v2, v0, v1

    const/16 v1, 0x1c

    sget v2, Lccc71/pmw/lib/e;->G:I

    aput v2, v0, v1

    const/16 v1, 0x1d

    sget v2, Lccc71/pmw/lib/e;->H:I

    aput v2, v0, v1

    const/16 v1, 0x1e

    .line 147
    sget v2, Lccc71/pmw/lib/e;->I:I

    aput v2, v0, v1

    const/16 v1, 0x1f

    sget v2, Lccc71/pmw/lib/e;->J:I

    aput v2, v0, v1

    const/16 v1, 0x20

    sget v2, Lccc71/pmw/lib/e;->K:I

    aput v2, v0, v1

    const/16 v1, 0x21

    .line 148
    sget v2, Lccc71/pmw/lib/e;->L:I

    aput v2, v0, v1

    const/16 v1, 0x22

    sget v2, Lccc71/pmw/lib/e;->M:I

    aput v2, v0, v1

    const/16 v1, 0x23

    sget v2, Lccc71/pmw/lib/e;->N:I

    aput v2, v0, v1

    const/16 v1, 0x24

    .line 149
    sget v2, Lccc71/pmw/lib/e;->O:I

    aput v2, v0, v1

    const/16 v1, 0x25

    sget v2, Lccc71/pmw/lib/e;->P:I

    aput v2, v0, v1

    const/16 v1, 0x26

    sget v2, Lccc71/pmw/lib/e;->Q:I

    aput v2, v0, v1

    const/16 v1, 0x27

    .line 150
    sget v2, Lccc71/pmw/lib/e;->R:I

    aput v2, v0, v1

    const/16 v1, 0x28

    sget v2, Lccc71/pmw/lib/e;->S:I

    aput v2, v0, v1

    const/16 v1, 0x29

    sget v2, Lccc71/pmw/lib/e;->T:I

    aput v2, v0, v1

    const/16 v1, 0x2a

    .line 151
    sget v2, Lccc71/pmw/lib/e;->U:I

    aput v2, v0, v1

    const/16 v1, 0x2b

    sget v2, Lccc71/pmw/lib/e;->V:I

    aput v2, v0, v1

    const/16 v1, 0x2c

    sget v2, Lccc71/pmw/lib/e;->W:I

    aput v2, v0, v1

    const/16 v1, 0x2d

    .line 152
    sget v2, Lccc71/pmw/lib/e;->X:I

    aput v2, v0, v1

    const/16 v1, 0x2e

    sget v2, Lccc71/pmw/lib/e;->Y:I

    aput v2, v0, v1

    const/16 v1, 0x2f

    sget v2, Lccc71/pmw/lib/e;->Z:I

    aput v2, v0, v1

    const/16 v1, 0x30

    .line 153
    sget v2, Lccc71/pmw/lib/e;->aa:I

    aput v2, v0, v1

    const/16 v1, 0x31

    sget v2, Lccc71/pmw/lib/e;->ab:I

    aput v2, v0, v1

    const/16 v1, 0x32

    sget v2, Lccc71/pmw/lib/e;->ac:I

    aput v2, v0, v1

    const/16 v1, 0x33

    .line 154
    sget v2, Lccc71/pmw/lib/e;->ad:I

    aput v2, v0, v1

    const/16 v1, 0x34

    sget v2, Lccc71/pmw/lib/e;->ae:I

    aput v2, v0, v1

    const/16 v1, 0x35

    sget v2, Lccc71/pmw/lib/e;->af:I

    aput v2, v0, v1

    const/16 v1, 0x36

    .line 155
    sget v2, Lccc71/pmw/lib/e;->ag:I

    aput v2, v0, v1

    const/16 v1, 0x37

    sget v2, Lccc71/pmw/lib/e;->ah:I

    aput v2, v0, v1

    const/16 v1, 0x38

    sget v2, Lccc71/pmw/lib/e;->ai:I

    aput v2, v0, v1

    const/16 v1, 0x39

    .line 156
    sget v2, Lccc71/pmw/lib/e;->aj:I

    aput v2, v0, v1

    const/16 v1, 0x3a

    sget v2, Lccc71/pmw/lib/e;->ak:I

    aput v2, v0, v1

    const/16 v1, 0x3b

    sget v2, Lccc71/pmw/lib/e;->al:I

    aput v2, v0, v1

    const/16 v1, 0x3c

    .line 157
    sget v2, Lccc71/pmw/lib/e;->am:I

    aput v2, v0, v1

    const/16 v1, 0x3d

    sget v2, Lccc71/pmw/lib/e;->an:I

    aput v2, v0, v1

    const/16 v1, 0x3e

    sget v2, Lccc71/pmw/lib/e;->ao:I

    aput v2, v0, v1

    const/16 v1, 0x3f

    .line 158
    sget v2, Lccc71/pmw/lib/e;->ap:I

    aput v2, v0, v1

    const/16 v1, 0x40

    sget v2, Lccc71/pmw/lib/e;->aq:I

    aput v2, v0, v1

    const/16 v1, 0x41

    sget v2, Lccc71/pmw/lib/e;->ar:I

    aput v2, v0, v1

    const/16 v1, 0x42

    .line 159
    sget v2, Lccc71/pmw/lib/e;->as:I

    aput v2, v0, v1

    const/16 v1, 0x43

    sget v2, Lccc71/pmw/lib/e;->at:I

    aput v2, v0, v1

    const/16 v1, 0x44

    sget v2, Lccc71/pmw/lib/e;->au:I

    aput v2, v0, v1

    const/16 v1, 0x45

    .line 160
    sget v2, Lccc71/pmw/lib/e;->av:I

    aput v2, v0, v1

    const/16 v1, 0x46

    sget v2, Lccc71/pmw/lib/e;->aw:I

    aput v2, v0, v1

    const/16 v1, 0x47

    sget v2, Lccc71/pmw/lib/e;->ax:I

    aput v2, v0, v1

    const/16 v1, 0x48

    .line 161
    sget v2, Lccc71/pmw/lib/e;->ay:I

    aput v2, v0, v1

    const/16 v1, 0x49

    sget v2, Lccc71/pmw/lib/e;->az:I

    aput v2, v0, v1

    const/16 v1, 0x4a

    sget v2, Lccc71/pmw/lib/e;->aA:I

    aput v2, v0, v1

    const/16 v1, 0x4b

    .line 162
    sget v2, Lccc71/pmw/lib/e;->aB:I

    aput v2, v0, v1

    const/16 v1, 0x4c

    sget v2, Lccc71/pmw/lib/e;->aC:I

    aput v2, v0, v1

    const/16 v1, 0x4d

    sget v2, Lccc71/pmw/lib/e;->aD:I

    aput v2, v0, v1

    const/16 v1, 0x4e

    .line 163
    sget v2, Lccc71/pmw/lib/e;->aE:I

    aput v2, v0, v1

    const/16 v1, 0x4f

    sget v2, Lccc71/pmw/lib/e;->aF:I

    aput v2, v0, v1

    const/16 v1, 0x50

    sget v2, Lccc71/pmw/lib/e;->aG:I

    aput v2, v0, v1

    const/16 v1, 0x51

    .line 164
    sget v2, Lccc71/pmw/lib/e;->aH:I

    aput v2, v0, v1

    const/16 v1, 0x52

    sget v2, Lccc71/pmw/lib/e;->aI:I

    aput v2, v0, v1

    const/16 v1, 0x53

    sget v2, Lccc71/pmw/lib/e;->aJ:I

    aput v2, v0, v1

    const/16 v1, 0x54

    .line 165
    sget v2, Lccc71/pmw/lib/e;->aK:I

    aput v2, v0, v1

    const/16 v1, 0x55

    sget v2, Lccc71/pmw/lib/e;->aL:I

    aput v2, v0, v1

    const/16 v1, 0x56

    sget v2, Lccc71/pmw/lib/e;->aM:I

    aput v2, v0, v1

    const/16 v1, 0x57

    .line 166
    sget v2, Lccc71/pmw/lib/e;->aN:I

    aput v2, v0, v1

    const/16 v1, 0x58

    sget v2, Lccc71/pmw/lib/e;->aO:I

    aput v2, v0, v1

    const/16 v1, 0x59

    sget v2, Lccc71/pmw/lib/e;->aP:I

    aput v2, v0, v1

    const/16 v1, 0x5a

    .line 167
    sget v2, Lccc71/pmw/lib/e;->aQ:I

    aput v2, v0, v1

    const/16 v1, 0x5b

    sget v2, Lccc71/pmw/lib/e;->aR:I

    aput v2, v0, v1

    const/16 v1, 0x5c

    sget v2, Lccc71/pmw/lib/e;->aS:I

    aput v2, v0, v1

    const/16 v1, 0x5d

    .line 168
    sget v2, Lccc71/pmw/lib/e;->aT:I

    aput v2, v0, v1

    const/16 v1, 0x5e

    sget v2, Lccc71/pmw/lib/e;->aU:I

    aput v2, v0, v1

    const/16 v1, 0x5f

    sget v2, Lccc71/pmw/lib/e;->aV:I

    aput v2, v0, v1

    const/16 v1, 0x60

    .line 169
    sget v2, Lccc71/pmw/lib/e;->aW:I

    aput v2, v0, v1

    const/16 v1, 0x61

    sget v2, Lccc71/pmw/lib/e;->aX:I

    aput v2, v0, v1

    const/16 v1, 0x62

    sget v2, Lccc71/pmw/lib/e;->aY:I

    aput v2, v0, v1

    const/16 v1, 0x63

    .line 170
    sget v2, Lccc71/pmw/lib/e;->aZ:I

    aput v2, v0, v1

    const/16 v1, 0x64

    sget v2, Lccc71/pmw/lib/e;->o:I

    aput v2, v0, v1

    .line 136
    sput-object v0, Lccc71/pmw/lib/pmw_widget;->n:[I

    .line 633
    const/16 v0, 0x17

    new-array v0, v0, [I

    .line 634
    sget v1, Lccc71/pmw/lib/c;->aj:I

    aput v1, v0, v4

    sget v1, Lccc71/pmw/lib/c;->ak:I

    aput v1, v0, v5

    sget v1, Lccc71/pmw/lib/c;->al:I

    aput v1, v0, v6

    .line 635
    sget v1, Lccc71/pmw/lib/c;->k:I

    aput v1, v0, v7

    sget v1, Lccc71/pmw/lib/c;->c:I

    aput v1, v0, v8

    const/4 v1, 0x5

    sget v2, Lccc71/pmw/lib/c;->g:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lccc71/pmw/lib/c;->h:I

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 636
    sget v2, Lccc71/pmw/lib/c;->t:I

    aput v2, v0, v1

    const/16 v1, 0x8

    sget v2, Lccc71/pmw/lib/c;->aM:I

    aput v2, v0, v1

    const/16 v1, 0x9

    sget v2, Lccc71/pmw/lib/c;->N:I

    aput v2, v0, v1

    const/16 v1, 0xa

    .line 637
    sget v2, Lccc71/pmw/lib/c;->a:I

    aput v2, v0, v1

    const/16 v1, 0xb

    sget v2, Lccc71/pmw/lib/c;->d:I

    aput v2, v0, v1

    const/16 v1, 0xc

    sget v2, Lccc71/pmw/lib/c;->b:I

    aput v2, v0, v1

    const/16 v1, 0xd

    .line 638
    sget v2, Lccc71/pmw/lib/c;->R:I

    aput v2, v0, v1

    const/16 v1, 0xe

    sget v2, Lccc71/pmw/lib/c;->S:I

    aput v2, v0, v1

    const/16 v1, 0xf

    sget v2, Lccc71/pmw/lib/c;->V:I

    aput v2, v0, v1

    const/16 v1, 0x10

    sget v2, Lccc71/pmw/lib/c;->U:I

    aput v2, v0, v1

    const/16 v1, 0x11

    .line 639
    sget v2, Lccc71/pmw/lib/c;->aT:I

    aput v2, v0, v1

    const/16 v1, 0x12

    sget v2, Lccc71/pmw/lib/c;->aU:I

    aput v2, v0, v1

    const/16 v1, 0x13

    sget v2, Lccc71/pmw/lib/c;->s:I

    aput v2, v0, v1

    const/16 v1, 0x14

    sget v2, Lccc71/pmw/lib/c;->aQ:I

    aput v2, v0, v1

    const/16 v1, 0x15

    .line 640
    sget v2, Lccc71/pmw/lib/c;->aO:I

    aput v2, v0, v1

    const/16 v1, 0x16

    sget v2, Lccc71/pmw/lib/c;->aP:I

    aput v2, v0, v1

    .line 632
    sput-object v0, Lccc71/pmw/lib/pmw_widget;->o:[I

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;I)Lccc71/pmw/lib/qm;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 460
    sget-object v0, Lccc71/pmw/lib/pmw_widget;->s:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    sget-object v0, Lccc71/pmw/lib/pmw_widget;->s:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/pmw/lib/qm;

    .line 516
    :goto_0
    return-object v0

    .line 463
    :cond_0
    new-instance v1, Lccc71/pmw/lib/qm;

    invoke-direct {v1}, Lccc71/pmw/lib/qm;-><init>()V

    .line 465
    sget-object v0, Lccc71/pmw/lib/pmw_widget;->p:Landroid/appwidget/AppWidgetManager;

    if-eqz v0, :cond_5

    .line 467
    sget-object v0, Lccc71/pmw/lib/pmw_widget;->p:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v0, p1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 470
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 471
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/pmw/lib/pmw_widget;

    iput-object v0, v1, Lccc71/pmw/lib/qm;->b:Lccc71/pmw/lib/pmw_widget;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    :goto_1
    iget-object v0, v1, Lccc71/pmw/lib/qm;->b:Lccc71/pmw/lib/pmw_widget;

    invoke-virtual {v0, v1, p0, p1}, Lccc71/pmw/lib/pmw_widget;->a(Lccc71/pmw/lib/qm;Landroid/content/Context;I)V

    .line 486
    invoke-static {p0, p1}, Lccc71/pmw/lib/pmw_settings;->t(Landroid/content/Context;I)I

    move-result v0

    iput v0, v1, Lccc71/pmw/lib/qm;->a:I

    .line 487
    invoke-static {p0, p1}, Lccc71/pmw/lib/pmw_settings;->B(Landroid/content/Context;I)I

    move-result v0

    iput v0, v1, Lccc71/pmw/lib/qm;->d:I

    .line 488
    invoke-static {p0, p1}, Lccc71/pmw/lib/pmw_settings;->C(Landroid/content/Context;I)Z

    move-result v0

    iput-boolean v0, v1, Lccc71/pmw/lib/qm;->e:Z

    .line 489
    invoke-static {p0, p1}, Lccc71/pmw/lib/pmw_settings;->D(Landroid/content/Context;I)Z

    move-result v0

    iput-boolean v0, v1, Lccc71/pmw/lib/qm;->f:Z

    .line 490
    invoke-static {p0, p1}, Lccc71/pmw/lib/pmw_settings;->r(Landroid/content/Context;I)I

    move-result v0

    iput v0, v1, Lccc71/pmw/lib/qm;->i:I

    .line 491
    invoke-static {p0, p1}, Lccc71/pmw/lib/pmw_settings;->p(Landroid/content/Context;I)I

    move-result v0

    iput v0, v1, Lccc71/pmw/lib/qm;->g:I

    .line 492
    invoke-static {p0, p1}, Lccc71/pmw/lib/pmw_settings;->q(Landroid/content/Context;I)I

    move-result v0

    iput v0, v1, Lccc71/pmw/lib/qm;->h:I

    .line 494
    invoke-static {p0, p1}, Lccc71/pmw/lib/pmw_settings;->o(Landroid/content/Context;I)I

    move-result v0

    iput v0, v1, Lccc71/pmw/lib/qm;->r:I

    .line 495
    iget v0, v1, Lccc71/pmw/lib/qm;->r:I

    if-ltz v0, :cond_1

    iget v0, v1, Lccc71/pmw/lib/qm;->r:I

    sget-object v2, Lccc71/pmw/lib/pmw_widget;->m:[I

    array-length v2, v2

    if-lt v0, v2, :cond_2

    .line 496
    :cond_1
    const/4 v0, 0x0

    iput v0, v1, Lccc71/pmw/lib/qm;->r:I

    .line 497
    :cond_2
    invoke-static {p0, p1}, Lccc71/pmw/lib/pmw_settings;->A(Landroid/content/Context;I)I

    move-result v0

    iput v0, v1, Lccc71/pmw/lib/qm;->s:I

    .line 498
    invoke-static {p0, p1}, Lccc71/pmw/lib/pmw_settings;->z(Landroid/content/Context;I)I

    move-result v0

    iput v0, v1, Lccc71/pmw/lib/qm;->t:I

    .line 500
    invoke-static {p0, p1}, Lccc71/pmw/lib/pmw_settings;->m(Landroid/content/Context;I)I

    move-result v0

    iput v0, v1, Lccc71/pmw/lib/qm;->c:I

    .line 501
    iget v0, v1, Lccc71/pmw/lib/qm;->c:I

    if-nez v0, :cond_4

    .line 503
    iget v0, v1, Lccc71/pmw/lib/qm;->a:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    iget v0, v1, Lccc71/pmw/lib/qm;->a:I

    const/4 v2, 0x6

    if-lt v0, v2, :cond_6

    .line 505
    :cond_3
    const/4 v0, -0x1

    iput v0, v1, Lccc71/pmw/lib/qm;->c:I

    .line 512
    :cond_4
    :goto_2
    iget v0, v1, Lccc71/pmw/lib/qm;->t:I

    invoke-static {v0}, Lccc71/pmw/lib/pmw_widget;->a(I)V

    .line 513
    iget v0, v1, Lccc71/pmw/lib/qm;->s:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lccc71/pmw/lib/pmw_widget;->a(I)V

    .line 515
    sget-object v0, Lccc71/pmw/lib/pmw_widget;->s:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 516
    goto/16 :goto_0

    .line 473
    :catch_0
    move-exception v0

    .line 475
    const-string v2, "process_monitor_widget"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Couldn\'t find appWidgetProvider for widget "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    new-instance v0, Lccc71/pmw/lib/pmw_widget;

    invoke-direct {v0}, Lccc71/pmw/lib/pmw_widget;-><init>()V

    iput-object v0, v1, Lccc71/pmw/lib/qm;->b:Lccc71/pmw/lib/pmw_widget;

    goto/16 :goto_1

    .line 481
    :cond_5
    const-string v0, "process_monitor_widget"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Null appWidgetManager for widget "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    new-instance v0, Lccc71/pmw/lib/pmw_widget;

    invoke-direct {v0}, Lccc71/pmw/lib/pmw_widget;-><init>()V

    iput-object v0, v1, Lccc71/pmw/lib/qm;->b:Lccc71/pmw/lib/pmw_widget;

    goto/16 :goto_1

    .line 509
    :cond_6
    const/high16 v0, -0x100

    iput v0, v1, Lccc71/pmw/lib/qm;->c:I

    goto :goto_2
.end method

.method public static a()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 326
    sget-object v0, Lccc71/pmw/lib/pmw_widget;->q:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected static a(I)V
    .locals 1
    .parameter

    .prologue
    .line 751
    packed-switch p0, :pswitch_data_0

    .line 781
    :goto_0
    :pswitch_0
    return-void

    .line 756
    :pswitch_1
    sget-boolean v0, Lccc71/pmw/lib/pmw_widget;->A:Z

    or-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lccc71/pmw/lib/pmw_widget;->A:Z

    goto :goto_0

    .line 760
    :pswitch_2
    sget-boolean v0, Lccc71/pmw/lib/pmw_widget;->w:Z

    or-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lccc71/pmw/lib/pmw_widget;->w:Z

    goto :goto_0

    .line 763
    :pswitch_3
    sget-boolean v0, Lccc71/pmw/lib/pmw_widget;->E:Z

    or-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lccc71/pmw/lib/pmw_widget;->E:Z

    goto :goto_0

    .line 767
    :pswitch_4
    sget-boolean v0, Lccc71/pmw/lib/pmw_widget;->x:Z

    or-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lccc71/pmw/lib/pmw_widget;->x:Z

    goto :goto_0

    .line 771
    :pswitch_5
    sget-boolean v0, Lccc71/pmw/lib/pmw_widget;->y:Z

    or-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lccc71/pmw/lib/pmw_widget;->y:Z

    goto :goto_0

    .line 775
    :pswitch_6
    sget-boolean v0, Lccc71/pmw/lib/pmw_widget;->z:Z

    or-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lccc71/pmw/lib/pmw_widget;->z:Z

    goto :goto_0

    .line 778
    :pswitch_7
    sget-boolean v0, Lccc71/pmw/lib/pmw_widget;->C:Z

    or-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lccc71/pmw/lib/pmw_widget;->C:Z

    goto :goto_0

    .line 751
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method protected static a(Landroid/content/Context;Landroid/widget/RemoteViews;III)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v5, 0x8000

    const/high16 v2, 0x4000

    const/high16 v4, 0x800

    .line 657
    packed-switch p4, :pswitch_data_0

    .line 661
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 662
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".pmw_monitor"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 663
    const-string v1, "ccc71.pmw.current_widget_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 664
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 665
    invoke-static {p0, p2, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 745
    :goto_0
    if-eqz v0, :cond_0

    .line 746
    invoke-virtual {p1, p3, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 747
    :cond_0
    return-void

    .line 668
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lccc71/pmw/lib/pmw_tweaker;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 669
    const-string v1, "ccc71.pmw.KILLALL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 670
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 671
    const-string v1, "ccc71.pmw.current_widget_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 672
    invoke-static {p0, p2, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_0

    .line 675
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lccc71/pmw/lib/pmw_tweaker;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 676
    const-string v1, "ccc71.pmw.KILLORSTART"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 677
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 678
    const-string v1, "ccc71.pmw.current_widget_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 679
    invoke-static {p0, p2, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_0

    .line 682
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lccc71/pmw/lib/pmw_tweaker;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 683
    const-string v1, "ccc71.pmw.UPDATE_WIDGET"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 684
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 685
    const-string v1, "ccc71.pmw.current_widget_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 686
    invoke-static {p0, p2, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_0

    .line 689
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lccc71/pmw/lib/pmw_tweaker;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 690
    const-string v1, "ccc71.pmw.RECORDER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 691
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 692
    const-string v1, "ccc71.pmw.current_widget_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 693
    invoke-static {p0, p2, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_0

    .line 696
    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 697
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".pmw_analyzer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 698
    const-string v1, "ccc71.pmw.current_widget_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 699
    invoke-static {p0, p2, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto/16 :goto_0

    .line 702
    :pswitch_6
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lccc71/pmw/lib/pmw_settings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 703
    const-string v1, "ccc71.pmw.current_widget_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 704
    invoke-static {p0, p2, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto/16 :goto_0

    .line 707
    :pswitch_7
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 708
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".pmw_apps"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 709
    const-string v1, "ccc71.pmw.current_widget_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 710
    invoke-static {p0, p2, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto/16 :goto_0

    .line 713
    :pswitch_8
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 714
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".pmw_tweaks"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 715
    const-string v1, "ccc71.pmw.current_widget_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 716
    invoke-static {p0, p2, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto/16 :goto_0

    .line 719
    :pswitch_9
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 720
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".pmw_main"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 721
    const-string v1, "ccc71.pmw.current_widget_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 722
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 723
    invoke-static {p0, p2, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto/16 :goto_0

    .line 726
    :pswitch_a
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lccc71/pmw/lib/pmw_main_popup;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 727
    const-string v1, "ccc71.pmw.current_widget_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 728
    const-string v1, "ccc71.pmw.popup"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 729
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 730
    invoke-static {p0, p2, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto/16 :goto_0

    .line 733
    :pswitch_b
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 734
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".pmw_terminal"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 735
    const-string v1, "ccc71.pmw.current_widget_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 736
    invoke-static {p0, p2, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto/16 :goto_0

    .line 739
    :pswitch_c
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 740
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".pmw_logcat"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 741
    const-string v1, "ccc71.pmw.current_widget_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 742
    invoke-static {p0, p2, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto/16 :goto_0

    .line 657
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method protected static a(Landroid/content/Context;Landroid/widget/RemoteViews;ZII)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x8

    const/16 v6, 0x64

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 785
    .line 787
    packed-switch p3, :pswitch_data_0

    :pswitch_0
    move v3, v1

    move v2, v1

    .line 833
    :goto_0
    if-eqz p2, :cond_0

    sget v0, Lccc71/pmw/lib/d;->gv:I

    .line 834
    :goto_1
    const/4 v4, 0x7

    invoke-static {v4}, Lccc71/utils/ac;->a(I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 836
    invoke-static {}, Lccc71/utils/android/y;->a()Lccc71/utils/android/y;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lccc71/utils/android/y;->a(Landroid/widget/RemoteViews;I)V

    .line 838
    if-gtz v2, :cond_1

    .line 841
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    sget v5, Lccc71/pmw/lib/e;->d:I

    invoke-direct {v1, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 842
    invoke-static {}, Lccc71/utils/android/y;->a()Lccc71/utils/android/y;

    move-result-object v4

    invoke-virtual {v4, p1, v0, v1}, Lccc71/utils/android/y;->a(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;)V

    .line 855
    :goto_2
    const/4 v0, 0x6

    if-eq p4, v0, :cond_3

    .line 856
    sget v0, Lccc71/pmw/lib/d;->b:I

    sget-object v2, Lccc71/pmw/lib/pmw_widget;->m:[I

    aget v2, v2, p4

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 921
    :goto_3
    :pswitch_1
    return-void

    .line 792
    :pswitch_2
    sget v2, Lccc71/pmw/lib/pmw_widget;->f:I

    move v3, v0

    .line 794
    goto :goto_0

    .line 796
    :pswitch_3
    sget v2, Lccc71/pmw/lib/pmw_widget;->b:I

    move v3, v1

    .line 797
    goto :goto_0

    .line 799
    :pswitch_4
    sget v2, Lccc71/pmw/lib/pmw_widget;->h:I

    move v3, v0

    .line 801
    goto :goto_0

    .line 803
    :pswitch_5
    sget v2, Lccc71/pmw/lib/pmw_widget;->c:I

    move v3, v1

    .line 804
    goto :goto_0

    .line 806
    :pswitch_6
    sget v2, Lccc71/pmw/lib/pmw_widget;->d:I

    move v3, v1

    .line 807
    goto :goto_0

    .line 809
    :pswitch_7
    sget v2, Lccc71/pmw/lib/pmw_widget;->g:I

    move v3, v0

    .line 811
    goto :goto_0

    .line 813
    :pswitch_8
    sget v2, Lccc71/pmw/lib/pmw_widget;->b:I

    rsub-int/lit8 v2, v2, 0x64

    move v3, v0

    .line 815
    goto :goto_0

    .line 817
    :pswitch_9
    sget v2, Lccc71/pmw/lib/pmw_widget;->c:I

    rsub-int/lit8 v2, v2, 0x64

    move v3, v0

    .line 819
    goto :goto_0

    .line 821
    :pswitch_a
    sget v2, Lccc71/pmw/lib/pmw_widget;->d:I

    rsub-int/lit8 v2, v2, 0x64

    move v3, v0

    .line 823
    goto :goto_0

    .line 825
    :pswitch_b
    sget v2, Lccc71/pmw/lib/pmw_widget;->e:I

    move v3, v1

    .line 826
    goto :goto_0

    .line 828
    :pswitch_c
    sget v2, Lccc71/pmw/lib/pmw_widget;->e:I

    rsub-int/lit8 v2, v2, 0x64

    move v3, v0

    .line 829
    goto :goto_0

    .line 833
    :cond_0
    sget v0, Lccc71/pmw/lib/d;->bC:I

    goto :goto_1

    .line 844
    :cond_1
    if-lt v2, v6, :cond_2

    .line 846
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    sget v5, Lccc71/pmw/lib/e;->o:I

    invoke-direct {v1, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 847
    invoke-static {}, Lccc71/utils/android/y;->a()Lccc71/utils/android/y;

    move-result-object v4

    invoke-virtual {v4, p1, v0, v1}, Lccc71/utils/android/y;->a(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;)V

    goto :goto_2

    .line 851
    :cond_2
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lccc71/pmw/lib/pmw_widget;->n:[I

    aget v5, v5, v2

    invoke-direct {v1, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 852
    invoke-static {}, Lccc71/utils/android/y;->a()Lccc71/utils/android/y;

    move-result-object v4

    invoke-virtual {v4, p1, v0, v1}, Lccc71/utils/android/y;->a(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;)V

    goto :goto_2

    .line 859
    :cond_3
    if-eqz v3, :cond_11

    .line 860
    rsub-int/lit8 v0, v2, 0x64

    .line 862
    :goto_4
    if-ne v0, v6, :cond_4

    .line 863
    sget v0, Lccc71/pmw/lib/d;->b:I

    sget v2, Lccc71/pmw/lib/c;->aq:I

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_3

    .line 864
    :cond_4
    const/16 v2, 0x50

    if-le v0, v2, :cond_5

    .line 865
    sget v0, Lccc71/pmw/lib/d;->b:I

    sget v2, Lccc71/pmw/lib/c;->ap:I

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_3

    .line 866
    :cond_5
    const/16 v2, 0x3c

    if-le v0, v2, :cond_6

    .line 867
    sget v0, Lccc71/pmw/lib/d;->b:I

    sget v2, Lccc71/pmw/lib/c;->at:I

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_3

    .line 868
    :cond_6
    const/16 v2, 0x28

    if-le v0, v2, :cond_7

    .line 869
    sget v0, Lccc71/pmw/lib/d;->b:I

    sget v2, Lccc71/pmw/lib/c;->au:I

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_3

    .line 870
    :cond_7
    const/16 v2, 0x14

    if-le v0, v2, :cond_8

    .line 871
    sget v0, Lccc71/pmw/lib/d;->b:I

    sget v2, Lccc71/pmw/lib/c;->as:I

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_3

    .line 873
    :cond_8
    sget v0, Lccc71/pmw/lib/d;->b:I

    sget v2, Lccc71/pmw/lib/c;->ar:I

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_3

    .line 878
    :cond_9
    if-eqz p2, :cond_d

    .line 880
    sget-object v0, Lccc71/pmw/lib/pmw_widget;->k:[I

    array-length v3, v0

    move v0, v1

    .line 881
    :goto_5
    if-lt v0, v3, :cond_a

    .line 886
    if-gtz v2, :cond_b

    .line 888
    sget v0, Lccc71/pmw/lib/d;->gw:I

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_3

    .line 883
    :cond_a
    sget-object v4, Lccc71/pmw/lib/pmw_widget;->k:[I

    aget v4, v4, v0

    invoke-virtual {p1, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 881
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 890
    :cond_b
    if-lt v2, v6, :cond_c

    .line 892
    sget v0, Lccc71/pmw/lib/d;->gH:I

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_3

    .line 896
    :cond_c
    sget-object v0, Lccc71/pmw/lib/pmw_widget;->k:[I

    aget v0, v0, v2

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_3

    .line 901
    :cond_d
    sget-object v0, Lccc71/pmw/lib/pmw_widget;->l:[I

    array-length v3, v0

    move v0, v1

    .line 902
    :goto_6
    if-lt v0, v3, :cond_e

    .line 907
    if-gtz v2, :cond_f

    .line 909
    sget v0, Lccc71/pmw/lib/d;->bD:I

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_3

    .line 904
    :cond_e
    sget-object v4, Lccc71/pmw/lib/pmw_widget;->l:[I

    aget v4, v4, v0

    invoke-virtual {p1, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 902
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 911
    :cond_f
    if-lt v2, v6, :cond_10

    .line 913
    sget v0, Lccc71/pmw/lib/d;->bO:I

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_3

    .line 917
    :cond_10
    sget-object v0, Lccc71/pmw/lib/pmw_widget;->l:[I

    aget v0, v0, v2

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_3

    :cond_11
    move v0, v2

    goto/16 :goto_4

    .line 787
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method static a(Landroid/content/Context;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 431
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lccc71/pmw/lib/pmw_widget;->s:Ljava/util/HashMap;

    .line 432
    sput-boolean v1, Lccc71/pmw/lib/pmw_widget;->A:Z

    .line 433
    sput-boolean v1, Lccc71/pmw/lib/pmw_widget;->C:Z

    .line 434
    sput-boolean v1, Lccc71/pmw/lib/pmw_widget;->w:Z

    .line 435
    sput-boolean v1, Lccc71/pmw/lib/pmw_widget;->x:Z

    .line 436
    sput-boolean v1, Lccc71/pmw/lib/pmw_widget;->y:Z

    .line 437
    sput-boolean v1, Lccc71/pmw/lib/pmw_widget;->E:Z

    .line 438
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->aL(Landroid/content/Context;)I

    move-result v0

    sput v0, Lccc71/pmw/lib/pmw_widget;->i:I

    .line 440
    if-eqz p1, :cond_0

    .line 441
    invoke-static {p0}, Lccc71/pmw/lib/pmw_widget;->c(Landroid/content/Context;)V

    .line 442
    :cond_0
    return-void
.end method

.method protected static a(Landroid/widget/RemoteViews;II)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 644
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 646
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 653
    :goto_0
    return-void

    .line 650
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 651
    sget-object v0, Lccc71/pmw/lib/pmw_widget;->o:[I

    aget v0, v0, p2

    invoke-virtual {p0, p1, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0
.end method

.method protected static a(Landroid/widget/RemoteViews;IIZ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 925
    if-gez p2, :cond_1

    .line 927
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 929
    invoke-virtual {p0, p1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 930
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1043
    :goto_0
    return-void

    .line 934
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0

    .line 939
    :cond_1
    invoke-virtual {p0, p1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 941
    const-string v0, ""

    .line 942
    packed-switch p2, :pswitch_data_0

    .line 1041
    :goto_1
    invoke-virtual {p0, p1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 945
    :pswitch_0
    sget-object v0, Lccc71/pmw/lib/pmw_widget;->B:Ljava/lang/String;

    goto :goto_1

    .line 948
    :pswitch_1
    if-eqz p3, :cond_2

    .line 950
    sget v0, Lccc71/pmw/lib/pmw_widget;->b:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Lccc71/utils/ag;->b(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 954
    :cond_2
    sget-object v0, Lccc71/pmw/lib/pmw_widget;->u:Lccc71/pmw/b/k;

    iget v0, v0, Lccc71/pmw/b/k;->b:I

    invoke-static {v0}, Lccc71/utils/ag;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 958
    :pswitch_2
    sget-object v0, Lccc71/pmw/lib/pmw_widget;->F:Ljava/lang/String;

    goto :goto_1

    .line 961
    :pswitch_3
    if-eqz p3, :cond_3

    .line 963
    sget v0, Lccc71/pmw/lib/pmw_widget;->c:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Lccc71/utils/ag;->b(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 967
    :cond_3
    sget-object v0, Lccc71/pmw/lib/pmw_widget;->t:Lccc71/pmw/b/u;

    iget-wide v0, v0, Lccc71/pmw/b/u;->a:J

    long-to-int v0, v0

    invoke-static {v0}, Lccc71/utils/ag;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 971
    :pswitch_4
    if-eqz p3, :cond_4

    .line 973
    sget v0, Lccc71/pmw/lib/pmw_widget;->d:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Lccc71/utils/ag;->b(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 977
    :cond_4
    sget-wide v0, Lccc71/pmw/b/u;->h:J

    long-to-int v0, v0

    invoke-static {v0}, Lccc71/utils/ag;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 981
    :pswitch_5
    sget-object v0, Lccc71/pmw/lib/pmw_widget;->D:Ljava/lang/String;

    goto :goto_1

    .line 984
    :pswitch_6
    new-instance v0, Lccc71/pmw/a/ah;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2}, Lccc71/pmw/a/ah;-><init>(Landroid/content/Context;Z)V

    .line 985
    invoke-virtual {v0}, Lccc71/pmw/a/ah;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 988
    :pswitch_7
    sget v0, Lccc71/pmw/lib/pmw_widget;->i:I

    sget-object v1, Lccc71/pmw/lib/pmw_widget;->a:Lccc71/pmw/a/ah;

    invoke-virtual {v1}, Lccc71/pmw/a/ah;->m()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_settings;->a(IF)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 991
    :pswitch_8
    if-eqz p3, :cond_5

    .line 993
    sget v0, Lccc71/pmw/lib/pmw_widget;->b:I

    rsub-int/lit8 v0, v0, 0x64

    int-to-long v0, v0

    invoke-static {v0, v1}, Lccc71/utils/ag;->b(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 997
    :cond_5
    sget-object v0, Lccc71/pmw/lib/pmw_widget;->u:Lccc71/pmw/b/k;

    iget v0, v0, Lccc71/pmw/b/k;->a:I

    sget-object v1, Lccc71/pmw/lib/pmw_widget;->u:Lccc71/pmw/b/k;

    iget v1, v1, Lccc71/pmw/b/k;->b:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Lccc71/utils/ag;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1001
    :pswitch_9
    if-eqz p3, :cond_6

    .line 1003
    sget v0, Lccc71/pmw/lib/pmw_widget;->c:I

    rsub-int/lit8 v0, v0, 0x64

    int-to-long v0, v0

    invoke-static {v0, v1}, Lccc71/utils/ag;->b(J)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 1007
    :cond_6
    sget-object v0, Lccc71/pmw/lib/pmw_widget;->t:Lccc71/pmw/b/u;

    iget-wide v0, v0, Lccc71/pmw/b/u;->b:J

    sget-object v2, Lccc71/pmw/lib/pmw_widget;->t:Lccc71/pmw/b/u;

    iget-wide v2, v2, Lccc71/pmw/b/u;->a:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {v0}, Lccc71/utils/ag;->a(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 1011
    :pswitch_a
    if-eqz p3, :cond_7

    .line 1013
    sget v0, Lccc71/pmw/lib/pmw_widget;->d:I

    rsub-int/lit8 v0, v0, 0x64

    int-to-long v0, v0

    invoke-static {v0, v1}, Lccc71/utils/ag;->b(J)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 1017
    :cond_7
    sget-wide v0, Lccc71/pmw/b/u;->i:J

    sget-wide v2, Lccc71/pmw/b/u;->h:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {v0}, Lccc71/utils/ag;->a(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 1021
    :pswitch_b
    if-eqz p3, :cond_8

    .line 1023
    sget v0, Lccc71/pmw/lib/pmw_widget;->e:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Lccc71/utils/ag;->b(J)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 1027
    :cond_8
    sget-wide v0, Lccc71/pmw/b/u;->f:J

    long-to-int v0, v0

    invoke-static {v0}, Lccc71/utils/ag;->a(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 1031
    :pswitch_c
    if-eqz p3, :cond_9

    .line 1033
    sget v0, Lccc71/pmw/lib/pmw_widget;->e:I

    rsub-int/lit8 v0, v0, 0x64

    int-to-long v0, v0

    invoke-static {v0, v1}, Lccc71/utils/ag;->b(J)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 1037
    :cond_9
    sget-wide v0, Lccc71/pmw/b/u;->g:J

    sget-wide v2, Lccc71/pmw/b/u;->f:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {v0}, Lccc71/utils/ag;->a(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 942
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private static a([I)V
    .locals 5
    .parameter

    .prologue
    .line 268
    array-length v1, p0

    .line 269
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    .line 277
    return-void

    .line 271
    :cond_0
    sget-object v2, Lccc71/pmw/lib/pmw_widget;->r:Ljava/util/ArrayList;

    aget v3, p0, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lccc71/pmw/lib/pmw_widget;->q:Ljava/util/ArrayList;

    aget v3, p0, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 273
    const-string v2, "process_monitor_widget"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Found widget "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v4, p0, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    sget-object v2, Lccc71/pmw/lib/pmw_widget;->q:Ljava/util/ArrayList;

    aget v3, p0, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1
    .parameter

    .prologue
    .line 318
    invoke-static {p0}, Lccc71/pmw/lib/pmw_widget;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lccc71/pmw/lib/pmw_widget;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    const/4 v0, 0x1

    .line 321
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 331
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 334
    new-instance v1, Lccc71/pmw/lib/ql;

    invoke-direct {v1, p0}, Lccc71/pmw/lib/ql;-><init>(Landroid/content/Context;)V

    .line 341
    const-wide/16 v2, 0x3e8

    .line 334
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 342
    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 346
    invoke-static {p0}, Lccc71/pmw/lib/pmw_widget;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 348
    sget-object v0, Lccc71/pmw/lib/pmw_widget;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    .line 349
    :goto_0
    if-lt v2, v3, :cond_b

    .line 354
    sget-object v0, Lccc71/pmw/lib/pmw_widget;->a:Lccc71/pmw/a/ah;

    if-nez v0, :cond_0

    .line 356
    new-instance v0, Lccc71/pmw/a/ah;

    invoke-direct {v0}, Lccc71/pmw/a/ah;-><init>()V

    sput-object v0, Lccc71/pmw/lib/pmw_widget;->a:Lccc71/pmw/a/ah;

    .line 359
    :cond_0
    sget-boolean v0, Lccc71/pmw/lib/pmw_widget;->C:Z

    if-eqz v0, :cond_1

    .line 361
    sget-object v0, Lccc71/pmw/lib/pmw_widget;->a:Lccc71/pmw/a/ah;

    invoke-virtual {v0, v1}, Lccc71/pmw/a/ah;->g(I)I

    move-result v0

    invoke-static {v0}, Lccc71/utils/ag;->c(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_widget;->D:Ljava/lang/String;

    .line 362
    sget-object v0, Lccc71/pmw/lib/pmw_widget;->a:Lccc71/pmw/a/ah;

    invoke-virtual {v0}, Lccc71/pmw/a/ah;->v()I

    move-result v0

    sput v0, Lccc71/pmw/lib/pmw_widget;->g:I

    .line 364
    :cond_1
    sget-boolean v0, Lccc71/pmw/lib/pmw_widget;->A:Z

    if-eqz v0, :cond_2

    .line 366
    sget-object v0, Lccc71/pmw/lib/pmw_widget;->a:Lccc71/pmw/a/ah;

    invoke-static {}, Lccc71/pmw/a/ah;->d()I

    move-result v0

    .line 367
    sput v0, Lccc71/pmw/lib/pmw_widget;->f:I

    int-to-long v4, v0

    invoke-static {v4, v5}, Lccc71/utils/ag;->b(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_widget;->B:Ljava/lang/String;

    .line 369
    :cond_2
    sget-boolean v0, Lccc71/pmw/lib/pmw_widget;->E:Z

    if-eqz v0, :cond_4

    .line 371
    sget-object v0, Lccc71/pmw/lib/pmw_widget;->v:Lccc71/pmw/b/q;

    if-nez v0, :cond_3

    .line 372
    new-instance v0, Lccc71/pmw/b/q;

    invoke-direct {v0, p0}, Lccc71/pmw/b/q;-><init>(Landroid/content/Context;)V

    sput-object v0, Lccc71/pmw/lib/pmw_widget;->v:Lccc71/pmw/b/q;

    .line 373
    :cond_3
    sget-object v0, Lccc71/pmw/lib/pmw_widget;->v:Lccc71/pmw/b/q;

    invoke-virtual {v0}, Lccc71/pmw/b/q;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_widget;->F:Ljava/lang/String;

    .line 374
    sget-object v0, Lccc71/pmw/lib/pmw_widget;->v:Lccc71/pmw/b/q;

    invoke-virtual {v0}, Lccc71/pmw/b/q;->a()I

    move-result v0

    sput v0, Lccc71/pmw/lib/pmw_widget;->h:I

    .line 376
    :cond_4
    sget-boolean v0, Lccc71/pmw/lib/pmw_widget;->w:Z

    if-eqz v0, :cond_5

    .line 378
    sget-object v0, Lccc71/pmw/lib/pmw_widget;->u:Lccc71/pmw/b/k;

    if-nez v0, :cond_c

    .line 379
    new-instance v0, Lccc71/pmw/b/k;

    invoke-direct {v0, p0}, Lccc71/pmw/b/k;-><init>(Landroid/content/Context;)V

    sput-object v0, Lccc71/pmw/lib/pmw_widget;->u:Lccc71/pmw/b/k;

    .line 383
    :goto_1
    sget-object v0, Lccc71/pmw/lib/pmw_widget;->u:Lccc71/pmw/b/k;

    invoke-virtual {v0}, Lccc71/pmw/b/k;->a()I

    move-result v0

    sput v0, Lccc71/pmw/lib/pmw_widget;->b:I

    .line 385
    :cond_5
    sget-boolean v0, Lccc71/pmw/lib/pmw_widget;->x:Z

    if-nez v0, :cond_6

    sget-boolean v0, Lccc71/pmw/lib/pmw_widget;->y:Z

    if-nez v0, :cond_6

    sget-boolean v0, Lccc71/pmw/lib/pmw_widget;->z:Z

    if-eqz v0, :cond_a

    .line 387
    :cond_6
    sget-object v0, Lccc71/pmw/lib/pmw_widget;->t:Lccc71/pmw/b/u;

    if-nez v0, :cond_7

    .line 388
    new-instance v0, Lccc71/pmw/b/u;

    invoke-direct {v0}, Lccc71/pmw/b/u;-><init>()V

    sput-object v0, Lccc71/pmw/lib/pmw_widget;->t:Lccc71/pmw/b/u;

    .line 390
    :cond_7
    sget-boolean v0, Lccc71/pmw/lib/pmw_widget;->x:Z

    if-eqz v0, :cond_8

    .line 392
    sget-object v0, Lccc71/pmw/lib/pmw_widget;->t:Lccc71/pmw/b/u;

    invoke-virtual {v0}, Lccc71/pmw/b/u;->c()V

    .line 393
    sget-object v0, Lccc71/pmw/lib/pmw_widget;->t:Lccc71/pmw/b/u;

    invoke-virtual {v0}, Lccc71/pmw/b/u;->d()I

    move-result v0

    sput v0, Lccc71/pmw/lib/pmw_widget;->c:I

    .line 396
    :cond_8
    sget-boolean v0, Lccc71/pmw/lib/pmw_widget;->y:Z

    if-eqz v0, :cond_9

    .line 398
    sget-object v0, Lccc71/pmw/lib/pmw_widget;->t:Lccc71/pmw/b/u;

    invoke-static {}, Lccc71/pmw/b/u;->a()V

    .line 399
    sget-object v0, Lccc71/pmw/lib/pmw_widget;->t:Lccc71/pmw/b/u;

    invoke-static {}, Lccc71/pmw/b/u;->e()I

    move-result v0

    sput v0, Lccc71/pmw/lib/pmw_widget;->d:I

    .line 402
    :cond_9
    sget-boolean v0, Lccc71/pmw/lib/pmw_widget;->z:Z

    if-eqz v0, :cond_a

    .line 404
    sget-object v0, Lccc71/pmw/lib/pmw_widget;->t:Lccc71/pmw/b/u;

    invoke-virtual {v0}, Lccc71/pmw/b/u;->b()V

    .line 405
    sget-object v0, Lccc71/pmw/lib/pmw_widget;->t:Lccc71/pmw/b/u;

    invoke-static {}, Lccc71/pmw/b/u;->f()I

    move-result v0

    sput v0, Lccc71/pmw/lib/pmw_widget;->e:I

    .line 409
    :cond_a
    :goto_2
    if-lt v1, v3, :cond_d

    .line 418
    :goto_3
    return-void

    .line 351
    :cond_b
    sget-object v0, Lccc71/pmw/lib/pmw_widget;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v0}, Lccc71/pmw/lib/pmw_widget;->a(Landroid/content/Context;I)Lccc71/pmw/lib/qm;

    .line 349
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    .line 381
    :cond_c
    sget-object v0, Lccc71/pmw/lib/pmw_widget;->u:Lccc71/pmw/b/k;

    invoke-virtual {v0}, Lccc71/pmw/b/k;->b()V

    goto :goto_1

    .line 411
    :cond_d
    sget-object v2, Lccc71/pmw/lib/pmw_widget;->p:Landroid/appwidget/AppWidgetManager;

    sget-object v0, Lccc71/pmw/lib/pmw_widget;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :try_start_0
    invoke-static {p0, v0}, Lccc71/pmw/lib/pmw_widget;->a(Landroid/content/Context;I)Lccc71/pmw/lib/qm;

    move-result-object v4

    iget-object v5, v4, Lccc71/pmw/lib/qm;->b:Lccc71/pmw/lib/pmw_widget;

    invoke-virtual {v5, v4, p0, v2, v0}, Lccc71/pmw/lib/pmw_widget;->a(Lccc71/pmw/lib/qm;Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    :goto_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 416
    :cond_e
    const-string v0, "process_monitor_widget"

    const-string v1, "cannot update monitoring widget"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 411
    :catch_0
    move-exception v0

    goto :goto_4
.end method

.method private static d(Landroid/content/Context;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 281
    sget-object v2, Lccc71/pmw/lib/pmw_widget;->p:Landroid/appwidget/AppWidgetManager;

    if-eqz v2, :cond_0

    sget-object v2, Lccc71/pmw/lib/pmw_widget;->q:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 313
    :goto_0
    return v0

    .line 284
    :cond_0
    if-eqz p0, :cond_6

    .line 286
    const-string v2, "process_monitor_widget"

    const-string v3, "Enumerating existing widgets..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 289
    sput-object v2, Lccc71/pmw/lib/pmw_widget;->p:Landroid/appwidget/AppWidgetManager;

    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lccc71/pmw/lib/pmw_widget;

    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v2

    .line 290
    array-length v3, v2

    if-eqz v3, :cond_1

    .line 291
    invoke-static {v2}, Lccc71/pmw/lib/pmw_widget;->a([I)V

    .line 292
    :cond_1
    sget-object v2, Lccc71/pmw/lib/pmw_widget;->p:Landroid/appwidget/AppWidgetManager;

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "ccc71.pmw.pro.pmw_widget_2x1"

    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v2

    .line 293
    array-length v3, v2

    if-eqz v3, :cond_2

    .line 294
    invoke-static {v2}, Lccc71/pmw/lib/pmw_widget;->a([I)V

    .line 295
    :cond_2
    sget-object v2, Lccc71/pmw/lib/pmw_widget;->p:Landroid/appwidget/AppWidgetManager;

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "ccc71.pmw.pro.pmw_widget_graph_2x1"

    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v2

    .line 296
    array-length v3, v2

    if-eqz v3, :cond_3

    .line 297
    invoke-static {v2}, Lccc71/pmw/lib/pmw_widget;->a([I)V

    .line 298
    :cond_3
    sget-object v2, Lccc71/pmw/lib/pmw_widget;->p:Landroid/appwidget/AppWidgetManager;

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "ccc71.pmw.pro.pmw_widget_graph_3x1"

    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v2

    .line 299
    array-length v3, v2

    if-eqz v3, :cond_4

    .line 300
    invoke-static {v2}, Lccc71/pmw/lib/pmw_widget;->a([I)V

    .line 301
    :cond_4
    sget-object v2, Lccc71/pmw/lib/pmw_widget;->p:Landroid/appwidget/AppWidgetManager;

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "ccc71.pmw.pro.pmw_widget_graph_4x1"

    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v2

    .line 302
    array-length v3, v2

    if-eqz v3, :cond_5

    .line 303
    invoke-static {v2}, Lccc71/pmw/lib/pmw_widget;->a([I)V

    .line 305
    :cond_5
    invoke-static {p0, v1}, Lccc71/pmw/lib/pmw_widget;->a(Landroid/content/Context;Z)V

    goto :goto_0

    .line 310
    :cond_6
    const-string v0, "process_monitor_widget"

    const-string v2, "Widget killed, cannot recover..."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 313
    goto :goto_0
.end method


# virtual methods
.method protected a(Lccc71/pmw/lib/qm;Landroid/content/Context;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 446
    invoke-static {p2}, Lccc71/pmw/lib/pmw_settings;->aL(Landroid/content/Context;)I

    move-result v0

    sput v0, Lccc71/pmw/lib/pmw_widget;->i:I

    .line 448
    invoke-static {p2, p3}, Lccc71/pmw/lib/pmw_settings;->l(Landroid/content/Context;I)I

    move-result v0

    iput v0, p1, Lccc71/pmw/lib/qm;->l:I

    .line 449
    invoke-static {p2, p3}, Lccc71/pmw/lib/pmw_settings;->u(Landroid/content/Context;I)I

    move-result v0

    iput v0, p1, Lccc71/pmw/lib/qm;->j:I

    .line 450
    invoke-static {p2, p3}, Lccc71/pmw/lib/pmw_settings;->v(Landroid/content/Context;I)I

    move-result v0

    iput v0, p1, Lccc71/pmw/lib/qm;->k:I

    .line 451
    invoke-static {p2, p3}, Lccc71/pmw/lib/pmw_settings;->y(Landroid/content/Context;I)I

    move-result v0

    iput v0, p1, Lccc71/pmw/lib/qm;->u:I

    .line 453
    iget v0, p1, Lccc71/pmw/lib/qm;->j:I

    invoke-static {v0}, Lccc71/pmw/lib/pmw_widget;->a(I)V

    .line 454
    iget v0, p1, Lccc71/pmw/lib/qm;->k:I

    invoke-static {v0}, Lccc71/pmw/lib/pmw_widget;->a(I)V

    .line 455
    iget v0, p1, Lccc71/pmw/lib/qm;->u:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lccc71/pmw/lib/pmw_widget;->a(I)V

    .line 456
    return-void
.end method

.method protected a(Lccc71/pmw/lib/qm;Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v8, -0x1

    const/16 v7, 0x8

    const/4 v1, 0x0

    .line 521
    iget v0, p1, Lccc71/pmw/lib/qm;->s:I

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    iget v3, p1, Lccc71/pmw/lib/qm;->t:I

    if-ne v3, v8, :cond_3

    move v3, v1

    :goto_1
    add-int/2addr v3, v0

    .line 524
    iget v0, p1, Lccc71/pmw/lib/qm;->a:I

    const/4 v5, 0x6

    if-lt v0, v5, :cond_4

    .line 525
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lccc71/pmw/lib/pmw_widget;->H:[I

    aget v6, v6, v3

    invoke-direct {v0, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 528
    :goto_2
    sget v5, Lccc71/pmw/lib/d;->gc:I

    sget-object v6, Lccc71/pmw/lib/pmw_widget;->j:[[I

    aget-object v3, v6, v3

    iget v6, p1, Lccc71/pmw/lib/qm;->a:I

    aget v3, v3, v6

    invoke-virtual {v0, v5, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 530
    sget v3, Lccc71/pmw/lib/d;->gb:I

    iget v5, p1, Lccc71/pmw/lib/qm;->c:I

    invoke-virtual {v0, v3, v5}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 531
    sget v3, Lccc71/pmw/lib/d;->fT:I

    iget v5, p1, Lccc71/pmw/lib/qm;->c:I

    invoke-virtual {v0, v3, v5}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 534
    iget v3, p1, Lccc71/pmw/lib/qm;->d:I

    if-nez v3, :cond_6

    .line 536
    sget v2, Lccc71/pmw/lib/d;->by:I

    sget v3, Lccc71/pmw/lib/g;->fD:I

    invoke-virtual {p2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 537
    iget-boolean v2, p1, Lccc71/pmw/lib/qm;->e:Z

    if-eqz v2, :cond_5

    .line 539
    iget v2, p1, Lccc71/pmw/lib/qm;->a:I

    packed-switch v2, :pswitch_data_0

    .line 542
    :pswitch_0
    sget v2, Lccc71/pmw/lib/d;->bz:I

    sget v3, Lccc71/pmw/lib/c;->bi:I

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 562
    :goto_3
    iget v2, p1, Lccc71/pmw/lib/qm;->u:I

    if-nez v2, :cond_8

    .line 564
    sget v2, Lccc71/pmw/lib/d;->fS:I

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 565
    sget v2, Lccc71/pmw/lib/d;->aF:I

    invoke-virtual {v0, v2, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 566
    sget v2, Lccc71/pmw/lib/d;->fS:I

    iget v3, p1, Lccc71/pmw/lib/qm;->i:I

    invoke-static {v0, v2, v3}, Lccc71/pmw/lib/pmw_widget;->a(Landroid/widget/RemoteViews;II)V

    .line 588
    :cond_0
    :goto_4
    invoke-static {}, Lccc71/pmw/lib/pmw_recorder;->a()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 590
    sget v2, Lccc71/pmw/lib/d;->gt:I

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 597
    :goto_5
    sget v2, Lccc71/pmw/lib/d;->bh:I

    iget v3, p1, Lccc71/pmw/lib/qm;->g:I

    invoke-static {p2, v0, p4, v2, v3}, Lccc71/pmw/lib/pmw_widget;->a(Landroid/content/Context;Landroid/widget/RemoteViews;III)V

    .line 598
    iget v2, p1, Lccc71/pmw/lib/qm;->h:I

    if-eq v2, v8, :cond_a

    .line 599
    sget v2, Lccc71/pmw/lib/d;->bz:I

    iget v3, p1, Lccc71/pmw/lib/qm;->h:I

    invoke-static {p2, v0, p4, v2, v3}, Lccc71/pmw/lib/pmw_widget;->a(Landroid/content/Context;Landroid/widget/RemoteViews;III)V

    .line 603
    :goto_6
    sget v2, Lccc71/pmw/lib/d;->gb:I

    iget v3, p1, Lccc71/pmw/lib/qm;->k:I

    iget-boolean v5, p1, Lccc71/pmw/lib/qm;->f:Z

    invoke-static {v0, v2, v3, v5}, Lccc71/pmw/lib/pmw_widget;->a(Landroid/widget/RemoteViews;IIZ)V

    .line 604
    sget v2, Lccc71/pmw/lib/d;->fT:I

    iget v3, p1, Lccc71/pmw/lib/qm;->j:I

    iget-boolean v5, p1, Lccc71/pmw/lib/qm;->f:Z

    invoke-static {v0, v2, v3, v5}, Lccc71/pmw/lib/pmw_widget;->a(Landroid/widget/RemoteViews;IIZ)V

    .line 605
    iget v2, p1, Lccc71/pmw/lib/qm;->l:I

    if-eqz v2, :cond_1

    .line 607
    sget v2, Lccc71/pmw/lib/d;->gb:I

    const-string v3, "setTextSize"

    iget v5, p1, Lccc71/pmw/lib/qm;->l:I

    int-to-float v5, v5

    invoke-virtual {v0, v2, v3, v5}, Landroid/widget/RemoteViews;->setFloat(ILjava/lang/String;F)V

    .line 608
    sget v2, Lccc71/pmw/lib/d;->fT:I

    const-string v3, "setTextSize"

    iget v5, p1, Lccc71/pmw/lib/qm;->l:I

    int-to-float v5, v5

    invoke-virtual {v0, v2, v3, v5}, Landroid/widget/RemoteViews;->setFloat(ILjava/lang/String;F)V

    .line 611
    :cond_1
    iget v2, p1, Lccc71/pmw/lib/qm;->t:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p1, Lccc71/pmw/lib/qm;->r:I

    invoke-static {p2, v0, v4, v2, v3}, Lccc71/pmw/lib/pmw_widget;->a(Landroid/content/Context;Landroid/widget/RemoteViews;ZII)V

    .line 612
    iget v2, p1, Lccc71/pmw/lib/qm;->s:I

    iget v3, p1, Lccc71/pmw/lib/qm;->r:I

    invoke-static {p2, v0, v1, v2, v3}, Lccc71/pmw/lib/pmw_widget;->a(Landroid/content/Context;Landroid/widget/RemoteViews;ZII)V

    .line 614
    if-eqz p3, :cond_b

    .line 615
    invoke-virtual {p3, p4, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 618
    :goto_7
    return-void

    :cond_2
    move v0, v2

    .line 521
    goto/16 :goto_0

    :cond_3
    move v3, v4

    goto/16 :goto_1

    .line 527
    :cond_4
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lccc71/pmw/lib/pmw_widget;->G:[I

    aget v6, v6, v3

    invoke-direct {v0, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 547
    :pswitch_1
    sget v2, Lccc71/pmw/lib/d;->bz:I

    sget v3, Lccc71/pmw/lib/c;->bk:I

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_3

    .line 552
    :cond_5
    sget v2, Lccc71/pmw/lib/d;->bz:I

    sget v3, Lccc71/pmw/lib/c;->bj:I

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_3

    .line 556
    :cond_6
    iget v3, p1, Lccc71/pmw/lib/qm;->d:I

    if-ne v3, v2, :cond_7

    iget v2, p1, Lccc71/pmw/lib/qm;->a:I

    const/4 v3, 0x6

    if-lt v2, v3, :cond_7

    .line 557
    sget v2, Lccc71/pmw/lib/d;->kr:I

    invoke-virtual {v0, v2, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 558
    :cond_7
    sget v2, Lccc71/pmw/lib/d;->by:I

    const-string v3, " "

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 559
    sget v2, Lccc71/pmw/lib/d;->bz:I

    sget v3, Lccc71/pmw/lib/c;->bj:I

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_3

    .line 570
    :cond_8
    sget v2, Lccc71/pmw/lib/d;->fS:I

    invoke-virtual {v0, v2, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 571
    sget v2, Lccc71/pmw/lib/d;->aF:I

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 572
    iget v2, p1, Lccc71/pmw/lib/qm;->a:I

    packed-switch v2, :pswitch_data_1

    .line 575
    :pswitch_2
    sget v2, Lccc71/pmw/lib/d;->aF:I

    invoke-virtual {v0, v2, v8}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 583
    :goto_8
    sget v2, Lccc71/pmw/lib/d;->aF:I

    iget v3, p1, Lccc71/pmw/lib/qm;->u:I

    add-int/lit8 v3, v3, -0x1

    iget-boolean v5, p1, Lccc71/pmw/lib/qm;->f:Z

    invoke-static {v0, v2, v3, v5}, Lccc71/pmw/lib/pmw_widget;->a(Landroid/widget/RemoteViews;IIZ)V

    .line 584
    iget v2, p1, Lccc71/pmw/lib/qm;->l:I

    if-eqz v2, :cond_0

    .line 585
    sget v2, Lccc71/pmw/lib/d;->aF:I

    const-string v3, "setTextSize"

    iget v5, p1, Lccc71/pmw/lib/qm;->l:I

    int-to-float v5, v5

    invoke-virtual {v0, v2, v3, v5}, Landroid/widget/RemoteViews;->setFloat(ILjava/lang/String;F)V

    goto/16 :goto_4

    .line 579
    :pswitch_3
    sget v2, Lccc71/pmw/lib/d;->aF:I

    const/high16 v3, -0x100

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setTextColor(II)V

    goto :goto_8

    .line 594
    :cond_9
    sget v2, Lccc71/pmw/lib/d;->gt:I

    invoke-virtual {v0, v2, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_5

    .line 601
    :cond_a
    sget v2, Lccc71/pmw/lib/d;->bz:I

    iget v3, p1, Lccc71/pmw/lib/qm;->g:I

    invoke-static {p2, v0, p4, v2, v3}, Lccc71/pmw/lib/pmw_widget;->a(Landroid/content/Context;Landroid/widget/RemoteViews;III)V

    goto/16 :goto_6

    .line 617
    :cond_b
    const-string v0, "process_monitor_widget"

    const-string v1, "appWidgetManager is NULL!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 539
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 572
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onDeleted(Landroid/content/Context;[I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 175
    const-string v0, "process_monitor_widget"

    const-string v1, "onDeleted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    array-length v1, p2

    .line 178
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    .line 186
    const-string v0, "process_monitor_widget"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "total active Widgets:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lccc71/pmw/lib/pmw_widget;->q:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    .line 197
    return-void

    .line 180
    :cond_0
    sget-object v2, Lccc71/pmw/lib/pmw_widget;->r:Ljava/util/ArrayList;

    aget v3, p2, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    sget-object v2, Lccc71/pmw/lib/pmw_widget;->q:Ljava/util/ArrayList;

    aget v3, p2, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 182
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 183
    sget-object v3, Lccc71/pmw/lib/pmw_widget;->q:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 184
    :cond_1
    const-string v2, "process_monitor_widget"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onDeleted Widget "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v4, p2, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onDisabled(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 202
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    .line 203
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 208
    const-string v0, "process_monitor_widget"

    const-string v1, "onEnabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    .line 212
    invoke-static {p1}, Lccc71/pmw/lib/pmw_service;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    invoke-static {p1}, Lccc71/pmw/lib/pmw_service;->b(Landroid/content/Context;)V

    .line 216
    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 221
    const-string v0, "process_monitor_widget"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onReceive:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 225
    const-string v1, "android.appwidget.action.APPWIDGET_DELETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 228
    if-eqz v0, :cond_0

    .line 230
    const/4 v1, 0x1

    new-array v1, v1, [I

    aput v0, v1, v3

    invoke-virtual {p0, p1, v1}, Lccc71/pmw/lib/pmw_widget;->onDeleted(Landroid/content/Context;[I)V

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 242
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 244
    sput-object p2, Lccc71/pmw/lib/pmw_widget;->p:Landroid/appwidget/AppWidgetManager;

    .line 246
    array-length v1, p3

    .line 247
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_1

    .line 254
    const-string v0, "process_monitor_widget"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "total active Widgets:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lccc71/pmw/lib/pmw_widget;->q:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-static {p1}, Lccc71/pmw/lib/pmw_service;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
    invoke-static {p1}, Lccc71/pmw/lib/pmw_service;->b(Landroid/content/Context;)V

    .line 261
    :cond_0
    invoke-static {p1}, Lccc71/pmw/lib/pmw_settings;->aL(Landroid/content/Context;)I

    move-result v0

    sput v0, Lccc71/pmw/lib/pmw_widget;->i:I

    .line 263
    invoke-static {p1}, Lccc71/pmw/lib/pmw_widget;->c(Landroid/content/Context;)V

    .line 264
    return-void

    .line 249
    :cond_1
    sget-object v2, Lccc71/pmw/lib/pmw_widget;->r:Ljava/util/ArrayList;

    aget v3, p3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lccc71/pmw/lib/pmw_widget;->q:Ljava/util/ArrayList;

    aget v3, p3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 251
    sget-object v2, Lccc71/pmw/lib/pmw_widget;->q:Ljava/util/ArrayList;

    aget v3, p3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
