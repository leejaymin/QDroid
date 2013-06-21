.class public final enum Lcom/ui/LapseIt/gallery/GalleryQuickAction$ACTION;
.super Ljava/lang/Enum;
.source "GalleryQuickAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ui/LapseIt/gallery/GalleryQuickAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ACTION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ui/LapseIt/gallery/GalleryQuickAction$ACTION;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CANCEL:Lcom/ui/LapseIt/gallery/GalleryQuickAction$ACTION;

.field private static final synthetic ENUM$VALUES:[Lcom/ui/LapseIt/gallery/GalleryQuickAction$ACTION;

.field public static final enum NONE:Lcom/ui/LapseIt/gallery/GalleryQuickAction$ACTION;

.field public static final enum RATE:Lcom/ui/LapseIt/gallery/GalleryQuickAction$ACTION;

.field public static final enum SHARE:Lcom/ui/LapseIt/gallery/GalleryQuickAction$ACTION;

.field public static final enum USER:Lcom/ui/LapseIt/gallery/GalleryQuickAction$ACTION;

.field public static final enum WATCH:Lcom/ui/LapseIt/gallery/GalleryQuickAction$ACTION;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 30
    new-instance v0, Lcom/ui/LapseIt/gallery/GalleryQuickAction$ACTION;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/ui/LapseIt/gallery/GalleryQuickAction$ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ui/LapseIt/gallery/GalleryQuickAction$ACTION;->NONE:Lcom/ui/LapseIt/gallery/GalleryQuickAction$ACTION;

    .line 31
    new-instance v0, Lcom/ui/LapseIt/gallery/GalleryQuickAction$ACTION;

    const-string v1, "WATCH"

    invoke-direct {v0, v1, v4}, Lcom/ui/LapseIt/gallery/GalleryQuickAction$ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ui/LapseIt/gallery/GalleryQuickAction$ACTION;->WATCH:Lcom/ui/LapseIt/gallery/GalleryQuickAction$ACTION;

    .line 32
    new-instance v0, Lcom/ui/LapseIt/gallery/GalleryQuickAction$ACTION;

    const-string v1, "SHARE"

    invoke-direct {v0, v1, v5}, Lcom/ui/LapseIt/gallery/GalleryQuickAction$ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ui/LapseIt/gallery/GalleryQuickAction$ACTION;->SHARE:Lcom/ui/LapseIt/gallery/GalleryQuickAction$ACTION;

    .line 33
    new-instance v0, Lcom/ui/LapseIt/gallery/GalleryQuickAction$ACTION;

    const-string v1, "RATE"

    invoke-direct {v0, v1, v6}, Lcom/ui/LapseIt/gallery/GalleryQuickAction$ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ui/LapseIt/gallery/GalleryQuickAction$ACTION;->RATE:Lcom/ui/LapseIt/gallery/GalleryQuickAction$ACTION;

    .line 34
    new-instance v0, Lcom/ui/LapseIt/gallery/GalleryQuickAction$ACTION;

    const-string v1, "USER"

    invoke-direct {v0, v1, v7}, Lcom/ui/LapseIt/gallery/GalleryQuickAction$ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ui/LapseIt/gallery/GalleryQuickAction$ACTION;->USER:Lcom/ui/LapseIt/gallery/GalleryQuickAction$ACTION;

    .line 35
    new-instance v0, Lcom/ui/LapseIt/gallery/GalleryQuickAction$ACTION;

    const-string v1, "CANCEL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/ui/LapseIt/gallery/GalleryQuickAction$ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ui/LapseIt/gallery/GalleryQuickAction$ACTION;->CANCEL:Lcom/ui/LapseIt/gallery/GalleryQuickAction$ACTION;

    .line 29
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/ui/LapseIt/gallery/GalleryQuickAction$ACTION;

    sget-object v1, Lcom/ui/LapseIt/gallery/GalleryQuickAction$ACTION;->NONE:Lcom/ui/LapseIt/gallery/GalleryQuickAction$ACTION;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ui/LapseIt/gallery/GalleryQuickAction$ACTION;->WATCH:Lcom/ui/LapseIt/gallery/GalleryQuickAction$ACTION;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ui/LapseIt/gallery/GalleryQuickAction$ACTION;->SHARE:Lcom/ui/LapseIt/gallery/GalleryQuickAction$ACTION;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ui/LapseIt/gallery/GalleryQuickAction$ACTION;->RATE:Lcom/ui/LapseIt/gallery/GalleryQuickAction$ACTION;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ui/LapseIt/gallery/GalleryQuickAction$ACTION;->USER:Lcom/ui/LapseIt/gallery/GalleryQuickAction$ACTION;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/ui/LapseIt/gallery/GalleryQuickAction$ACTION;->CANCEL:Lcom/ui/LapseIt/gallery/GalleryQuickAction$ACTION;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ui/LapseIt/gallery/GalleryQuickAction$ACTION;->ENUM$VALUES:[Lcom/ui/LapseIt/gallery/GalleryQuickAction$ACTION;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ui/LapseIt/gallery/GalleryQuickAction$ACTION;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/ui/LapseIt/gallery/GalleryQuickAction$ACTION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ui/LapseIt/gallery/GalleryQuickAction$ACTION;

    return-object v0
.end method

.method public static values()[Lcom/ui/LapseIt/gallery/GalleryQuickAction$ACTION;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/ui/LapseIt/gallery/GalleryQuickAction$ACTION;->ENUM$VALUES:[Lcom/ui/LapseIt/gallery/GalleryQuickAction$ACTION;

    array-length v1, v0

    new-array v2, v1, [Lcom/ui/LapseIt/gallery/GalleryQuickAction$ACTION;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
