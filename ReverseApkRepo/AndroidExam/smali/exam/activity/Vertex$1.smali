.class Lexam/activity/Vertex$1;
.super Ljava/lang/Object;
.source "SaveCurve2.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexam/activity/Vertex;
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
        "Lexam/activity/Vertex;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lexam/activity/Vertex;
    .locals 7
    .parameter "source"

    .prologue
    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 34
    .local v1, x:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 35
    .local v2, y:I
    const/4 v3, 0x1

    new-array v0, v3, [Z

    .line 36
    .local v0, td:[Z
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 37
    new-instance v3, Lexam/activity/Vertex;

    int-to-float v4, v1

    int-to-float v5, v2

    const/4 v6, 0x0

    aget-boolean v6, v0, v6

    invoke-direct {v3, v4, v5, v6}, Lexam/activity/Vertex;-><init>(FFZ)V

    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lexam/activity/Vertex$1;->createFromParcel(Landroid/os/Parcel;)Lexam/activity/Vertex;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lexam/activity/Vertex;
    .locals 1
    .parameter "size"

    .prologue
    .line 41
    new-array v0, p1, [Lexam/activity/Vertex;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lexam/activity/Vertex$1;->newArray(I)[Lexam/activity/Vertex;

    move-result-object v0

    return-object v0
.end method
