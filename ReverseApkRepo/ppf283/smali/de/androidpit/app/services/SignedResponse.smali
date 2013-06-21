.class public Lde/androidpit/app/services/SignedResponse;
.super Ljava/lang/Object;
.source "SignedResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lde/androidpit/app/services/SignedResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final NULL:Ljava/lang/String; = ""


# instance fields
.field private final mIsLicensed:Ljava/lang/String;

.field private final mSign:Ljava/lang/String;

.field private final mSignedData:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lde/androidpit/app/services/SignedResponse$1;

    invoke-direct {v0}, Lde/androidpit/app/services/SignedResponse$1;-><init>()V

    sput-object v0, Lde/androidpit/app/services/SignedResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 17
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "isLicensed"
    .parameter "sign"
    .parameter "signedData"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lde/androidpit/app/services/SignedResponse;->mIsLicensed:Ljava/lang/String;

    .line 49
    if-nez p2, :cond_0

    const-string p2, ""

    .end local p2
    :cond_0
    iput-object p2, p0, Lde/androidpit/app/services/SignedResponse;->mSign:Ljava/lang/String;

    .line 50
    if-nez p3, :cond_1

    const-string p3, ""

    .end local p3
    :cond_1
    iput-object p3, p0, Lde/androidpit/app/services/SignedResponse;->mSignedData:Ljava/lang/String;

    .line 51
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public getIsLicensed()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lde/androidpit/app/services/SignedResponse;->mIsLicensed:Ljava/lang/String;

    return-object v0
.end method

.method public getSign()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lde/androidpit/app/services/SignedResponse;->mSign:Ljava/lang/String;

    return-object v0
.end method

.method public getSignedData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lde/androidpit/app/services/SignedResponse;->mSignedData:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 68
    iget-object v0, p0, Lde/androidpit/app/services/SignedResponse;->mIsLicensed:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lde/androidpit/app/services/SignedResponse;->mSign:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lde/androidpit/app/services/SignedResponse;->mSignedData:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    return-void
.end method
