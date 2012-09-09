.class public final enum Lorg/chemlab/dealdroidapp/Intents;
.super Ljava/lang/Enum;
.source "Intents.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/chemlab/dealdroidapp/Intents;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BOOT_INTENT:Lorg/chemlab/dealdroidapp/Intents;

.field public static final enum DEALDROID_DISABLE:Lorg/chemlab/dealdroidapp/Intents;

.field public static final enum DEALDROID_ENABLE:Lorg/chemlab/dealdroidapp/Intents;

.field public static final enum DEALDROID_RESTART:Lorg/chemlab/dealdroidapp/Intents;

.field public static final enum DEALDROID_START:Lorg/chemlab/dealdroidapp/Intents;

.field public static final enum DEALDROID_STOP:Lorg/chemlab/dealdroidapp/Intents;

.field public static final enum DEALDROID_UPDATE:Lorg/chemlab/dealdroidapp/Intents;

.field private static final synthetic ENUM$VALUES:[Lorg/chemlab/dealdroidapp/Intents;


# instance fields
.field private final action:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 12
    new-instance v0, Lorg/chemlab/dealdroidapp/Intents;

    const-string v1, "BOOT_INTENT"

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v0, v1, v4, v2}, Lorg/chemlab/dealdroidapp/Intents;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/chemlab/dealdroidapp/Intents;->BOOT_INTENT:Lorg/chemlab/dealdroidapp/Intents;

    .line 13
    new-instance v0, Lorg/chemlab/dealdroidapp/Intents;

    const-string v1, "DEALDROID_START"

    const-string v2, "org.chemlab.dealdroidapp.DEALDROID_START"

    invoke-direct {v0, v1, v5, v2}, Lorg/chemlab/dealdroidapp/Intents;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/chemlab/dealdroidapp/Intents;->DEALDROID_START:Lorg/chemlab/dealdroidapp/Intents;

    .line 14
    new-instance v0, Lorg/chemlab/dealdroidapp/Intents;

    const-string v1, "DEALDROID_STOP"

    const-string v2, "org.chemlab.dealdroidapp.DEALDROID_STOP"

    invoke-direct {v0, v1, v6, v2}, Lorg/chemlab/dealdroidapp/Intents;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/chemlab/dealdroidapp/Intents;->DEALDROID_STOP:Lorg/chemlab/dealdroidapp/Intents;

    .line 15
    new-instance v0, Lorg/chemlab/dealdroidapp/Intents;

    const-string v1, "DEALDROID_RESTART"

    const-string v2, "org.chemlab.dealdroidapp.DEALDROID_RESTART"

    invoke-direct {v0, v1, v7, v2}, Lorg/chemlab/dealdroidapp/Intents;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/chemlab/dealdroidapp/Intents;->DEALDROID_RESTART:Lorg/chemlab/dealdroidapp/Intents;

    .line 16
    new-instance v0, Lorg/chemlab/dealdroidapp/Intents;

    const-string v1, "DEALDROID_UPDATE"

    const-string v2, "org.chemlab.dealdroidapp.DEALDROID_UPDATE"

    invoke-direct {v0, v1, v8, v2}, Lorg/chemlab/dealdroidapp/Intents;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/chemlab/dealdroidapp/Intents;->DEALDROID_UPDATE:Lorg/chemlab/dealdroidapp/Intents;

    .line 17
    new-instance v0, Lorg/chemlab/dealdroidapp/Intents;

    const-string v1, "DEALDROID_ENABLE"

    const/4 v2, 0x5

    const-string v3, "org.chemlab.dealdroidapp.DEALDROID_ENABLE"

    invoke-direct {v0, v1, v2, v3}, Lorg/chemlab/dealdroidapp/Intents;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/chemlab/dealdroidapp/Intents;->DEALDROID_ENABLE:Lorg/chemlab/dealdroidapp/Intents;

    .line 18
    new-instance v0, Lorg/chemlab/dealdroidapp/Intents;

    const-string v1, "DEALDROID_DISABLE"

    const/4 v2, 0x6

    const-string v3, "org.chemlab.dealdroidapp.DEALDROID_DISABLE"

    invoke-direct {v0, v1, v2, v3}, Lorg/chemlab/dealdroidapp/Intents;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/chemlab/dealdroidapp/Intents;->DEALDROID_DISABLE:Lorg/chemlab/dealdroidapp/Intents;

    .line 11
    const/4 v0, 0x7

    new-array v0, v0, [Lorg/chemlab/dealdroidapp/Intents;

    sget-object v1, Lorg/chemlab/dealdroidapp/Intents;->BOOT_INTENT:Lorg/chemlab/dealdroidapp/Intents;

    aput-object v1, v0, v4

    sget-object v1, Lorg/chemlab/dealdroidapp/Intents;->DEALDROID_START:Lorg/chemlab/dealdroidapp/Intents;

    aput-object v1, v0, v5

    sget-object v1, Lorg/chemlab/dealdroidapp/Intents;->DEALDROID_STOP:Lorg/chemlab/dealdroidapp/Intents;

    aput-object v1, v0, v6

    sget-object v1, Lorg/chemlab/dealdroidapp/Intents;->DEALDROID_RESTART:Lorg/chemlab/dealdroidapp/Intents;

    aput-object v1, v0, v7

    sget-object v1, Lorg/chemlab/dealdroidapp/Intents;->DEALDROID_UPDATE:Lorg/chemlab/dealdroidapp/Intents;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lorg/chemlab/dealdroidapp/Intents;->DEALDROID_ENABLE:Lorg/chemlab/dealdroidapp/Intents;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/chemlab/dealdroidapp/Intents;->DEALDROID_DISABLE:Lorg/chemlab/dealdroidapp/Intents;

    aput-object v2, v0, v1

    sput-object v0, Lorg/chemlab/dealdroidapp/Intents;->ENUM$VALUES:[Lorg/chemlab/dealdroidapp/Intents;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "action"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput-object p3, p0, Lorg/chemlab/dealdroidapp/Intents;->action:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/chemlab/dealdroidapp/Intents;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lorg/chemlab/dealdroidapp/Intents;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/chemlab/dealdroidapp/Intents;

    return-object v0
.end method

.method public static values()[Lorg/chemlab/dealdroidapp/Intents;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/chemlab/dealdroidapp/Intents;->ENUM$VALUES:[Lorg/chemlab/dealdroidapp/Intents;

    array-length v1, v0

    new-array v2, v1, [Lorg/chemlab/dealdroidapp/Intents;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lorg/chemlab/dealdroidapp/Intents;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 37
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/chemlab/dealdroidapp/Intents;->action:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
