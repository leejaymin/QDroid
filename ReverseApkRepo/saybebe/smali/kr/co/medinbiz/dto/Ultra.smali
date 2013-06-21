.class public Lkr/co/medinbiz/dto/Ultra;
.super Ljava/lang/Object;
.source "Ultra.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lkr/co/medinbiz/dto/Ultra;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private date:Ljava/lang/String;

.field private mp4Url:Ljava/lang/String;

.field private place:Ljava/lang/String;

.field private thumbnailUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    new-instance v0, Lkr/co/medinbiz/dto/Ultra$1;

    invoke-direct {v0}, Lkr/co/medinbiz/dto/Ultra$1;-><init>()V

    sput-object v0, Lkr/co/medinbiz/dto/Ultra;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkr/co/medinbiz/dto/Ultra;->place:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkr/co/medinbiz/dto/Ultra;->date:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkr/co/medinbiz/dto/Ultra;->thumbnailUrl:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkr/co/medinbiz/dto/Ultra;->mp4Url:Ljava/lang/String;

    .line 28
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lkr/co/medinbiz/dto/Ultra;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lkr/co/medinbiz/dto/Ultra;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lkr/co/medinbiz/dto/Ultra;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-virtual {p1}, Lkr/co/medinbiz/dto/Ultra;->getPlace()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkr/co/medinbiz/dto/Ultra;->place:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Lkr/co/medinbiz/dto/Ultra;->getDate()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkr/co/medinbiz/dto/Ultra;->date:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Lkr/co/medinbiz/dto/Ultra;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkr/co/medinbiz/dto/Ultra;->thumbnailUrl:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Lkr/co/medinbiz/dto/Ultra;->getMp4Url()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkr/co/medinbiz/dto/Ultra;->mp4Url:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lkr/co/medinbiz/dto/Ultra;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getMp4Url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lkr/co/medinbiz/dto/Ultra;->mp4Url:Ljava/lang/String;

    return-object v0
.end method

.method public getPlace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lkr/co/medinbiz/dto/Ultra;->place:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lkr/co/medinbiz/dto/Ultra;->thumbnailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .parameter "date"

    .prologue
    .line 35
    iput-object p1, p0, Lkr/co/medinbiz/dto/Ultra;->date:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setMp4Url(Ljava/lang/String;)V
    .locals 0
    .parameter "mp4Url"

    .prologue
    .line 51
    iput-object p1, p0, Lkr/co/medinbiz/dto/Ultra;->mp4Url:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setPlace(Ljava/lang/String;)V
    .locals 0
    .parameter "place"

    .prologue
    .line 43
    iput-object p1, p0, Lkr/co/medinbiz/dto/Ultra;->place:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setThumbnailUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "thumbnailUrl"

    .prologue
    .line 59
    iput-object p1, p0, Lkr/co/medinbiz/dto/Ultra;->thumbnailUrl:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 71
    iget-object v0, p0, Lkr/co/medinbiz/dto/Ultra;->place:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lkr/co/medinbiz/dto/Ultra;->date:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lkr/co/medinbiz/dto/Ultra;->thumbnailUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lkr/co/medinbiz/dto/Ultra;->mp4Url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    return-void
.end method
