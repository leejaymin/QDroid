.class final enum Lcom/ui/LapseIt/capture/CaptureMenuWidget$SKINS;
.super Ljava/lang/Enum;
.source "CaptureMenuWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ui/LapseIt/capture/CaptureMenuWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "SKINS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ui/LapseIt/capture/CaptureMenuWidget$SKINS;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CANCEL:Lcom/ui/LapseIt/capture/CaptureMenuWidget$SKINS;

.field private static final synthetic ENUM$VALUES:[Lcom/ui/LapseIt/capture/CaptureMenuWidget$SKINS;

.field public static final enum PAUSE:Lcom/ui/LapseIt/capture/CaptureMenuWidget$SKINS;

.field public static final enum RECORD:Lcom/ui/LapseIt/capture/CaptureMenuWidget$SKINS;

.field public static final enum STOP:Lcom/ui/LapseIt/capture/CaptureMenuWidget$SKINS;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 43
    new-instance v0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$SKINS;

    const-string v1, "RECORD"

    invoke-direct {v0, v1, v2}, Lcom/ui/LapseIt/capture/CaptureMenuWidget$SKINS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$SKINS;->RECORD:Lcom/ui/LapseIt/capture/CaptureMenuWidget$SKINS;

    .line 44
    new-instance v0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$SKINS;

    const-string v1, "PAUSE"

    invoke-direct {v0, v1, v3}, Lcom/ui/LapseIt/capture/CaptureMenuWidget$SKINS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$SKINS;->PAUSE:Lcom/ui/LapseIt/capture/CaptureMenuWidget$SKINS;

    .line 45
    new-instance v0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$SKINS;

    const-string v1, "CANCEL"

    invoke-direct {v0, v1, v4}, Lcom/ui/LapseIt/capture/CaptureMenuWidget$SKINS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$SKINS;->CANCEL:Lcom/ui/LapseIt/capture/CaptureMenuWidget$SKINS;

    .line 46
    new-instance v0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$SKINS;

    const-string v1, "STOP"

    invoke-direct {v0, v1, v5}, Lcom/ui/LapseIt/capture/CaptureMenuWidget$SKINS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$SKINS;->STOP:Lcom/ui/LapseIt/capture/CaptureMenuWidget$SKINS;

    .line 42
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/ui/LapseIt/capture/CaptureMenuWidget$SKINS;

    sget-object v1, Lcom/ui/LapseIt/capture/CaptureMenuWidget$SKINS;->RECORD:Lcom/ui/LapseIt/capture/CaptureMenuWidget$SKINS;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ui/LapseIt/capture/CaptureMenuWidget$SKINS;->PAUSE:Lcom/ui/LapseIt/capture/CaptureMenuWidget$SKINS;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ui/LapseIt/capture/CaptureMenuWidget$SKINS;->CANCEL:Lcom/ui/LapseIt/capture/CaptureMenuWidget$SKINS;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ui/LapseIt/capture/CaptureMenuWidget$SKINS;->STOP:Lcom/ui/LapseIt/capture/CaptureMenuWidget$SKINS;

    aput-object v1, v0, v5

    sput-object v0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$SKINS;->ENUM$VALUES:[Lcom/ui/LapseIt/capture/CaptureMenuWidget$SKINS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ui/LapseIt/capture/CaptureMenuWidget$SKINS;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$SKINS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$SKINS;

    return-object v0
.end method

.method public static values()[Lcom/ui/LapseIt/capture/CaptureMenuWidget$SKINS;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$SKINS;->ENUM$VALUES:[Lcom/ui/LapseIt/capture/CaptureMenuWidget$SKINS;

    array-length v1, v0

    new-array v2, v1, [Lcom/ui/LapseIt/capture/CaptureMenuWidget$SKINS;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
