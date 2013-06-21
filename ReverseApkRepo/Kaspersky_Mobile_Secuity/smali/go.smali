.class public abstract Lgo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static transient a:Lgo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lgo;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lgo;->a:Lgo;

    if-nez v0, :cond_0

    .line 17
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 18
    packed-switch v0, :pswitch_data_0

    .line 27
    new-instance v0, Lcom/kms/privacyprotection/AutoSyncUtilsSDKnew;

    invoke-direct {v0}, Lcom/kms/privacyprotection/AutoSyncUtilsSDKnew;-><init>()V

    sput-object v0, Lgo;->a:Lgo;

    .line 31
    :cond_0
    :goto_0
    sget-object v0, Lgo;->a:Lgo;

    return-object v0

    .line 21
    :pswitch_0
    new-instance v0, Lgp;

    invoke-direct {v0}, Lgp;-><init>()V

    sput-object v0, Lgo;->a:Lgo;

    goto :goto_0

    .line 24
    :pswitch_1
    new-instance v0, Lgq;

    invoke-direct {v0}, Lgq;-><init>()V

    sput-object v0, Lgo;->a:Lgo;

    goto :goto_0

    .line 18
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public abstract getCurrentAutoSyncState(Landroid/content/Context;)Z
.end method

.method public abstract toggleAutoSync(Landroid/content/Context;Z)V
.end method
