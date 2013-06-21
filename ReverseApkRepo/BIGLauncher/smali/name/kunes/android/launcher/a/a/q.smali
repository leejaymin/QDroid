.class public Lname/kunes/android/launcher/a/a/q;
.super Ljava/lang/Object;

# interfaces
.implements Lname/kunes/android/launcher/a/a;


# static fields
.field private static final a:[I

.field private static final b:[I

.field private static final c:[I


# instance fields
.field private final d:Landroid/app/Activity;

.field private final e:Landroid/telephony/TelephonyManager;

.field private f:Landroid/telephony/SignalStrength;

.field private g:Landroid/telephony/ServiceState;

.field private h:Landroid/view/View;

.field private i:Landroid/telephony/PhoneStateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x5

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lname/kunes/android/launcher/a/a/q;->a:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lname/kunes/android/launcher/a/a/q;->b:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lname/kunes/android/launcher/a/a/q;->c:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x7t 0x1t 0x2t 0x7ft
        0xfft 0x0t 0x2t 0x7ft
        0x1t 0x1t 0x2t 0x7ft
        0x3t 0x1t 0x2t 0x7ft
        0x5t 0x1t 0x2t 0x7ft
    .end array-data

    :array_1
    .array-data 0x4
        0x6t 0x1t 0x2t 0x7ft
        0xfet 0x0t 0x2t 0x7ft
        0x0t 0x1t 0x2t 0x7ft
        0x2t 0x1t 0x2t 0x7ft
        0x4t 0x1t 0x2t 0x7ft
    .end array-data

    :array_2
    .array-data 0x4
        0x4bt 0x1t 0x6t 0x7ft
        0x4ct 0x1t 0x6t 0x7ft
        0x4dt 0x1t 0x6t 0x7ft
        0x4et 0x1t 0x6t 0x7ft
        0x4ft 0x1t 0x6t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lname/kunes/android/launcher/a/a/c;

    invoke-direct {v0, p0}, Lname/kunes/android/launcher/a/a/c;-><init>(Lname/kunes/android/launcher/a/a/q;)V

    iput-object v0, p0, Lname/kunes/android/launcher/a/a/q;->i:Landroid/telephony/PhoneStateListener;

    iput-object p1, p0, Lname/kunes/android/launcher/a/a/q;->d:Landroid/app/Activity;

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lname/kunes/android/launcher/a/a/q;->e:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method static synthetic a(I)I
    .locals 1

    invoke-static {p0}, Lname/kunes/android/launcher/a/a/q;->b(I)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lname/kunes/android/launcher/a/a/q;)I
    .locals 8

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lname/kunes/android/launcher/a/a/q;->g:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lname/kunes/android/launcher/a/a/q;->g:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    move v1, v5

    :goto_0
    if-nez v1, :cond_2

    :cond_0
    :goto_1
    return v0

    :pswitch_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lname/kunes/android/launcher/a/a/q;->f:Landroid/telephony/SignalStrength;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lname/kunes/android/launcher/a/a/q;->f:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v5

    :goto_2
    if-nez v1, :cond_5

    iget-object v1, p0, Lname/kunes/android/launcher/a/a/q;->f:Landroid/telephony/SignalStrength;

    if-eqz v1, :cond_3

    iget-object v0, p0, Lname/kunes/android/launcher/a/a/q;->f:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    :cond_3
    invoke-static {v0}, Lname/kunes/android/launcher/a/a/q;->b(I)I

    move-result v0

    goto :goto_1

    :cond_4
    move v1, v0

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lname/kunes/android/launcher/a/a/q;->f:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v1

    iget-object v6, p0, Lname/kunes/android/launcher/a/a/q;->f:Landroid/telephony/SignalStrength;

    invoke-virtual {v6}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v6

    const/16 v7, -0x4b

    if-lt v1, v7, :cond_7

    move v1, v2

    :goto_3
    const/16 v7, -0x5a

    if-lt v6, v7, :cond_b

    move v0, v2

    :cond_6
    :goto_4
    if-ge v1, v0, :cond_0

    move v0, v1

    goto :goto_1

    :cond_7
    const/16 v7, -0x55

    if-lt v1, v7, :cond_8

    move v1, v3

    goto :goto_3

    :cond_8
    const/16 v7, -0x5f

    if-lt v1, v7, :cond_9

    move v1, v4

    goto :goto_3

    :cond_9
    const/16 v7, -0x64

    if-lt v1, v7, :cond_a

    move v1, v5

    goto :goto_3

    :cond_a
    move v1, v0

    goto :goto_3

    :cond_b
    const/16 v2, -0x6e

    if-lt v6, v2, :cond_c

    move v0, v3

    goto :goto_4

    :cond_c
    const/16 v2, -0x82

    if-lt v6, v2, :cond_d

    move v0, v4

    goto :goto_4

    :cond_d
    const/16 v2, -0x96

    if-lt v6, v2, :cond_6

    move v0, v5

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lname/kunes/android/launcher/a/a/q;Landroid/telephony/ServiceState;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/a/a/q;->g:Landroid/telephony/ServiceState;

    return-void
.end method

.method static synthetic a(Lname/kunes/android/launcher/a/a/q;Landroid/telephony/SignalStrength;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/a/a/q;->f:Landroid/telephony/SignalStrength;

    return-void
.end method

.method private static b(I)I
    .locals 2

    const/4 v0, 0x2

    if-le p0, v0, :cond_0

    const/16 v1, 0x63

    if-ne p0, v1, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/16 v1, 0xc

    if-lt p0, v1, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    const/16 v1, 0x8

    if-lt p0, v1, :cond_4

    const/4 v0, 0x3

    goto :goto_0

    :cond_4
    const/4 v1, 0x5

    if-ge p0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lname/kunes/android/launcher/a/a/q;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lname/kunes/android/launcher/a/a/q;->h:Landroid/view/View;

    return-object v0
.end method

.method static synthetic b()[I
    .locals 1

    sget-object v0, Lname/kunes/android/launcher/a/a/q;->a:[I

    return-object v0
.end method

.method static synthetic c(Lname/kunes/android/launcher/a/a/q;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lname/kunes/android/launcher/a/a/q;->d:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic c()[I
    .locals 1

    sget-object v0, Lname/kunes/android/launcher/a/a/q;->b:[I

    return-object v0
.end method

.method static synthetic d()[I
    .locals 1

    sget-object v0, Lname/kunes/android/launcher/a/a/q;->c:[I

    return-object v0
.end method


# virtual methods
.method public final a(II)V
    .locals 0

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/a/a/q;->h:Landroid/view/View;

    return-void
.end method

.method public final d_()V
    .locals 3

    iget-object v0, p0, Lname/kunes/android/launcher/a/a/q;->e:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lname/kunes/android/launcher/a/a/q;->i:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x103

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public final e()V
    .locals 3

    iget-object v0, p0, Lname/kunes/android/launcher/a/a/q;->e:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lname/kunes/android/launcher/a/a/q;->i:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method
