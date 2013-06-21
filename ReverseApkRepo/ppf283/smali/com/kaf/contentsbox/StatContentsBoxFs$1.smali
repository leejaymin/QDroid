.class Lcom/kaf/contentsbox/StatContentsBoxFs$1;
.super Ljava/lang/Object;
.source "StatContentsBoxFs.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kaf/contentsbox/StatContentsBoxFs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/kaf/contentsbox/StatContentsBoxFs;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/kaf/contentsbox/StatContentsBoxFs;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 81
    new-instance v0, Lcom/kaf/contentsbox/StatContentsBoxFs;

    invoke-direct {v0, p1}, Lcom/kaf/contentsbox/StatContentsBoxFs;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/kaf/contentsbox/StatContentsBoxFs$1;->createFromParcel(Landroid/os/Parcel;)Lcom/kaf/contentsbox/StatContentsBoxFs;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/kaf/contentsbox/StatContentsBoxFs;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 90
    new-array v0, p1, [Lcom/kaf/contentsbox/StatContentsBoxFs;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/kaf/contentsbox/StatContentsBoxFs$1;->newArray(I)[Lcom/kaf/contentsbox/StatContentsBoxFs;

    move-result-object v0

    return-object v0
.end method
