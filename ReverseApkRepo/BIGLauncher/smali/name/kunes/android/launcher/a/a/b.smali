.class public Lname/kunes/android/launcher/a/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lname/kunes/android/launcher/a/a;


# static fields
.field private static final a:[I

.field private static final b:[I

.field private static final c:[I

.field private static final d:[I


# instance fields
.field private e:Landroid/view/View;

.field private final f:Landroid/app/Activity;

.field private g:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0xa

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lname/kunes/android/launcher/a/a/b;->a:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lname/kunes/android/launcher/a/a/b;->b:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lname/kunes/android/launcher/a/a/b;->c:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lname/kunes/android/launcher/a/a/b;->d:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x3t 0x0t 0x2t 0x7ft
        0x5t 0x0t 0x2t 0x7ft
        0x7t 0x0t 0x2t 0x7ft
        0x9t 0x0t 0x2t 0x7ft
        0xbt 0x0t 0x2t 0x7ft
        0xdt 0x0t 0x2t 0x7ft
        0xft 0x0t 0x2t 0x7ft
        0x11t 0x0t 0x2t 0x7ft
        0x13t 0x0t 0x2t 0x7ft
        0x15t 0x0t 0x2t 0x7ft
    .end array-data

    :array_1
    .array-data 0x4
        0x2t 0x0t 0x2t 0x7ft
        0x4t 0x0t 0x2t 0x7ft
        0x6t 0x0t 0x2t 0x7ft
        0x8t 0x0t 0x2t 0x7ft
        0xat 0x0t 0x2t 0x7ft
        0xct 0x0t 0x2t 0x7ft
        0xet 0x0t 0x2t 0x7ft
        0x10t 0x0t 0x2t 0x7ft
        0x12t 0x0t 0x2t 0x7ft
        0x14t 0x0t 0x2t 0x7ft
    .end array-data

    :array_2
    .array-data 0x4
        0x19t 0x0t 0x2t 0x7ft
        0x1ct 0x0t 0x2t 0x7ft
        0x1ft 0x0t 0x2t 0x7ft
        0x22t 0x0t 0x2t 0x7ft
        0x25t 0x0t 0x2t 0x7ft
        0x28t 0x0t 0x2t 0x7ft
        0x2bt 0x0t 0x2t 0x7ft
        0x2et 0x0t 0x2t 0x7ft
        0x31t 0x0t 0x2t 0x7ft
        0x34t 0x0t 0x2t 0x7ft
    .end array-data

    :array_3
    .array-data 0x4
        0x18t 0x0t 0x2t 0x7ft
        0x1bt 0x0t 0x2t 0x7ft
        0x1et 0x0t 0x2t 0x7ft
        0x21t 0x0t 0x2t 0x7ft
        0x24t 0x0t 0x2t 0x7ft
        0x27t 0x0t 0x2t 0x7ft
        0x2at 0x0t 0x2t 0x7ft
        0x2dt 0x0t 0x2t 0x7ft
        0x30t 0x0t 0x2t 0x7ft
        0x33t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lname/kunes/android/launcher/a/a/o;

    invoke-direct {v0, p0}, Lname/kunes/android/launcher/a/a/o;-><init>(Lname/kunes/android/launcher/a/a/b;)V

    iput-object v0, p0, Lname/kunes/android/launcher/a/a/b;->g:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lname/kunes/android/launcher/a/a/b;->f:Landroid/app/Activity;

    return-void
.end method

.method static synthetic a(Lname/kunes/android/launcher/a/a/b;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lname/kunes/android/launcher/a/a/b;->f:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic b(Lname/kunes/android/launcher/a/a/b;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lname/kunes/android/launcher/a/a/b;->e:Landroid/view/View;

    return-object v0
.end method

.method static synthetic b()[I
    .locals 1

    sget-object v0, Lname/kunes/android/launcher/a/a/b;->c:[I

    return-object v0
.end method

.method static synthetic c()[I
    .locals 1

    sget-object v0, Lname/kunes/android/launcher/a/a/b;->d:[I

    return-object v0
.end method

.method static synthetic d()[I
    .locals 1

    sget-object v0, Lname/kunes/android/launcher/a/a/b;->a:[I

    return-object v0
.end method

.method static synthetic f()[I
    .locals 1

    sget-object v0, Lname/kunes/android/launcher/a/a/b;->b:[I

    return-object v0
.end method


# virtual methods
.method public final a(II)V
    .locals 0

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/a/a/b;->e:Landroid/view/View;

    return-void
.end method

.method public final d_()V
    .locals 4

    iget-object v0, p0, Lname/kunes/android/launcher/a/a/b;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lname/kunes/android/launcher/a/a/b;->g:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Lname/kunes/android/launcher/a/a/b;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lname/kunes/android/launcher/a/a/b;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
