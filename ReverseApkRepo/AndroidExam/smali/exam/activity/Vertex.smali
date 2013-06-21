.class Lexam/activity/Vertex;
.super Ljava/lang/Object;
.source "SaveCurve2.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lexam/activity/Vertex;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field Draw:Z

.field x:F

.field y:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lexam/activity/Vertex$1;

    invoke-direct {v0}, Lexam/activity/Vertex$1;-><init>()V

    sput-object v0, Lexam/activity/Vertex;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 11
    return-void
.end method

.method constructor <init>(FFZ)V
    .locals 0
    .parameter "ax"
    .parameter "ay"
    .parameter "ad"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lexam/activity/Vertex;->x:F

    .line 14
    iput p2, p0, Lexam/activity/Vertex;->y:F

    .line 15
    iput-boolean p3, p0, Lexam/activity/Vertex;->Draw:Z

    .line 16
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 26
    iget v0, p0, Lexam/activity/Vertex;->x:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 27
    iget v0, p0, Lexam/activity/Vertex;->y:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 28
    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lexam/activity/Vertex;->Draw:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 29
    return-void
.end method
