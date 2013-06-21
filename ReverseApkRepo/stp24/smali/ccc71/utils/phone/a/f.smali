.class public abstract Lccc71/utils/phone/a/f;
.super Lccc71/utils/phone/a/i;
.source "SourceFile"


# static fields
.field private static a:Landroid/telephony/TelephonyManager;

.field private static g:Ljava/util/ArrayList;

.field private static h:Landroid/telephony/PhoneStateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Lccc71/utils/phone/a/f;->a:Landroid/telephony/TelephonyManager;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lccc71/utils/phone/a/f;->g:Ljava/util/ArrayList;

    .line 17
    new-instance v0, Lccc71/utils/phone/a/g;

    invoke-direct {v0}, Lccc71/utils/phone/a/g;-><init>()V

    sput-object v0, Lccc71/utils/phone/a/f;->h:Landroid/telephony/PhoneStateListener;

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lccc71/utils/phone/a/i;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 53
    return-void
.end method

.method static synthetic a()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lccc71/utils/phone/a/f;->g:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 58
    sget-object v0, Lccc71/utils/phone/a/f;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 60
    sget-object v0, Lccc71/utils/phone/a/f;->a:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 61
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lccc71/utils/phone/a/f;->a:Landroid/telephony/TelephonyManager;

    .line 63
    :cond_0
    sget-object v0, Lccc71/utils/phone/a/f;->a:Landroid/telephony/TelephonyManager;

    sget-object v1, Lccc71/utils/phone/a/f;->h:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x21

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 64
    const-string v0, "process_monitor_widget"

    const-string v1, "Registered phone listener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_1
    sget-object v0, Lccc71/utils/phone/a/f;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    return-void
.end method

.method public abstract a(Landroid/telephony/ServiceState;)V
.end method

.method public final b(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 73
    sget-object v0, Lccc71/utils/phone/a/f;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 75
    sget-object v0, Lccc71/utils/phone/a/f;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 77
    sget-object v0, Lccc71/utils/phone/a/f;->a:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 78
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lccc71/utils/phone/a/f;->a:Landroid/telephony/TelephonyManager;

    .line 79
    :cond_0
    sget-object v0, Lccc71/utils/phone/a/f;->a:Landroid/telephony/TelephonyManager;

    sget-object v1, Lccc71/utils/phone/a/f;->h:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 81
    const-string v0, "process_monitor_widget"

    const-string v1, "Unregistered phone listener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_1
    return-void
.end method

.method public abstract c(I)V
.end method
