.class public Lcom/inmobi/androidsdk/ai/controller/JSController$Properties;
.super Lcom/inmobi/androidsdk/ai/controller/JSController$ReflectedParcelable;
.source "JSController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/androidsdk/ai/controller/JSController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Properties"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/inmobi/androidsdk/ai/controller/JSController$Properties;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public backgroundColor:I

.field public backgroundOpacity:F

.field public useBackground:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 332
    new-instance v0, Lcom/inmobi/androidsdk/ai/controller/JSController$Properties$1;

    invoke-direct {v0}, Lcom/inmobi/androidsdk/ai/controller/JSController$Properties$1;-><init>()V

    sput-object v0, Lcom/inmobi/androidsdk/ai/controller/JSController$Properties;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 308
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 323
    invoke-direct {p0}, Lcom/inmobi/androidsdk/ai/controller/JSController$ReflectedParcelable;-><init>()V

    .line 324
    iput-boolean v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSController$Properties;->useBackground:Z

    .line 325
    iput v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSController$Properties;->backgroundColor:I

    .line 326
    const/4 v0, 0x0

    iput v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSController$Properties;->backgroundOpacity:F

    .line 327
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter

    .prologue
    .line 317
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/ai/controller/JSController$ReflectedParcelable;-><init>(Landroid/os/Parcel;)V

    .line 318
    return-void
.end method
