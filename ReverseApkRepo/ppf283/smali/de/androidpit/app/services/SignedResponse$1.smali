.class Lde/androidpit/app/services/SignedResponse$1;
.super Ljava/lang/Object;
.source "SignedResponse.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/androidpit/app/services/SignedResponse;
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
        "Lde/androidpit/app/services/SignedResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lde/androidpit/app/services/SignedResponse;
    .locals 4
    .parameter "in"

    .prologue
    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, isLicensed:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 35
    .local v1, sign:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 36
    .local v2, signedData:Ljava/lang/String;
    new-instance v3, Lde/androidpit/app/services/SignedResponse;

    invoke-direct {v3, v0, v1, v2}, Lde/androidpit/app/services/SignedResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lde/androidpit/app/services/SignedResponse$1;->createFromParcel(Landroid/os/Parcel;)Lde/androidpit/app/services/SignedResponse;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lde/androidpit/app/services/SignedResponse;
    .locals 1
    .parameter "size"

    .prologue
    .line 42
    new-array v0, p1, [Lde/androidpit/app/services/SignedResponse;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lde/androidpit/app/services/SignedResponse$1;->newArray(I)[Lde/androidpit/app/services/SignedResponse;

    move-result-object v0

    return-object v0
.end method
