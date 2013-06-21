.class public final enum Lkr/co/medinbiz/widget/ultra/util/ImageDownloader$Mode;
.super Ljava/lang/Enum;
.source "ImageDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lkr/co/medinbiz/widget/ultra/util/ImageDownloader$Mode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CORRECT:Lkr/co/medinbiz/widget/ultra/util/ImageDownloader$Mode;

.field private static final synthetic ENUM$VALUES:[Lkr/co/medinbiz/widget/ultra/util/ImageDownloader$Mode;

.field public static final enum NO_ASYNC_TASK:Lkr/co/medinbiz/widget/ultra/util/ImageDownloader$Mode;

.field public static final enum NO_DOWNLOADED_DRAWABLE:Lkr/co/medinbiz/widget/ultra/util/ImageDownloader$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 68
    new-instance v0, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader$Mode;

    const-string v1, "NO_ASYNC_TASK"

    invoke-direct {v0, v1, v2}, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader$Mode;->NO_ASYNC_TASK:Lkr/co/medinbiz/widget/ultra/util/ImageDownloader$Mode;

    new-instance v0, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader$Mode;

    const-string v1, "NO_DOWNLOADED_DRAWABLE"

    invoke-direct {v0, v1, v3}, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader$Mode;->NO_DOWNLOADED_DRAWABLE:Lkr/co/medinbiz/widget/ultra/util/ImageDownloader$Mode;

    new-instance v0, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader$Mode;

    const-string v1, "CORRECT"

    invoke-direct {v0, v1, v4}, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader$Mode;->CORRECT:Lkr/co/medinbiz/widget/ultra/util/ImageDownloader$Mode;

    .line 67
    const/4 v0, 0x3

    new-array v0, v0, [Lkr/co/medinbiz/widget/ultra/util/ImageDownloader$Mode;

    sget-object v1, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader$Mode;->NO_ASYNC_TASK:Lkr/co/medinbiz/widget/ultra/util/ImageDownloader$Mode;

    aput-object v1, v0, v2

    sget-object v1, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader$Mode;->NO_DOWNLOADED_DRAWABLE:Lkr/co/medinbiz/widget/ultra/util/ImageDownloader$Mode;

    aput-object v1, v0, v3

    sget-object v1, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader$Mode;->CORRECT:Lkr/co/medinbiz/widget/ultra/util/ImageDownloader$Mode;

    aput-object v1, v0, v4

    sput-object v0, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader$Mode;->ENUM$VALUES:[Lkr/co/medinbiz/widget/ultra/util/ImageDownloader$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkr/co/medinbiz/widget/ultra/util/ImageDownloader$Mode;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader$Mode;

    return-object v0
.end method

.method public static values()[Lkr/co/medinbiz/widget/ultra/util/ImageDownloader$Mode;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader$Mode;->ENUM$VALUES:[Lkr/co/medinbiz/widget/ultra/util/ImageDownloader$Mode;

    array-length v1, v0

    new-array v2, v1, [Lkr/co/medinbiz/widget/ultra/util/ImageDownloader$Mode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
