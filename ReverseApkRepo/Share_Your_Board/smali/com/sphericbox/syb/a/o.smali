.class public Lcom/sphericbox/syb/a/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final aE:Lcom/sphericbox/syb/a/n;

.field public final aF:Lcom/sphericbox/syb/a/n;

.field public final aG:Lcom/sphericbox/syb/a/n;

.field public final aH:Lcom/sphericbox/syb/a/n;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 8
    new-instance v0, Lcom/sphericbox/syb/a/t;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sphericbox/syb/a/t;-><init>(Lcom/sphericbox/syb/a/g;)V

    sput-object v0, Lcom/sphericbox/syb/a/o;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sphericbox/syb/a/n;

    iput-object v0, p0, Lcom/sphericbox/syb/a/o;->aE:Lcom/sphericbox/syb/a/n;

    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sphericbox/syb/a/n;

    iput-object v0, p0, Lcom/sphericbox/syb/a/o;->aF:Lcom/sphericbox/syb/a/n;

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sphericbox/syb/a/n;

    iput-object v0, p0, Lcom/sphericbox/syb/a/o;->aG:Lcom/sphericbox/syb/a/n;

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sphericbox/syb/a/n;

    iput-object v0, p0, Lcom/sphericbox/syb/a/o;->aH:Lcom/sphericbox/syb/a/n;

    .line 30
    return-void
.end method

.method public constructor <init>(Lcom/sphericbox/syb/a/n;Lcom/sphericbox/syb/a/n;Lcom/sphericbox/syb/a/n;Lcom/sphericbox/syb/a/n;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/sphericbox/syb/a/o;->aE:Lcom/sphericbox/syb/a/n;

    .line 20
    iput-object p2, p0, Lcom/sphericbox/syb/a/o;->aF:Lcom/sphericbox/syb/a/n;

    .line 21
    iput-object p3, p0, Lcom/sphericbox/syb/a/o;->aG:Lcom/sphericbox/syb/a/n;

    .line 22
    iput-object p4, p0, Lcom/sphericbox/syb/a/o;->aH:Lcom/sphericbox/syb/a/n;

    .line 23
    return-void
.end method


# virtual methods
.method public b(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sphericbox/syb/a/o;->aE:Lcom/sphericbox/syb/a/n;

    iput p1, v0, Lcom/sphericbox/syb/a/n;->x:I

    .line 47
    iget-object v0, p0, Lcom/sphericbox/syb/a/o;->aE:Lcom/sphericbox/syb/a/n;

    iput p2, v0, Lcom/sphericbox/syb/a/n;->y:I

    .line 48
    return-void
.end method

.method public c(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sphericbox/syb/a/o;->aF:Lcom/sphericbox/syb/a/n;

    iput p1, v0, Lcom/sphericbox/syb/a/n;->x:I

    .line 52
    iget-object v0, p0, Lcom/sphericbox/syb/a/o;->aF:Lcom/sphericbox/syb/a/n;

    iput p2, v0, Lcom/sphericbox/syb/a/n;->y:I

    .line 53
    return-void
.end method

.method public d(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sphericbox/syb/a/o;->aG:Lcom/sphericbox/syb/a/n;

    iput p1, v0, Lcom/sphericbox/syb/a/n;->x:I

    .line 57
    iget-object v0, p0, Lcom/sphericbox/syb/a/o;->aG:Lcom/sphericbox/syb/a/n;

    iput p2, v0, Lcom/sphericbox/syb/a/n;->y:I

    .line 58
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public e(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sphericbox/syb/a/o;->aH:Lcom/sphericbox/syb/a/n;

    iput p1, v0, Lcom/sphericbox/syb/a/n;->x:I

    .line 62
    iget-object v0, p0, Lcom/sphericbox/syb/a/o;->aH:Lcom/sphericbox/syb/a/n;

    iput p2, v0, Lcom/sphericbox/syb/a/n;->y:I

    .line 63
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const-string v3, ", "

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    const-string v1, "Quad["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget-object v1, p0, Lcom/sphericbox/syb/a/o;->aE:Lcom/sphericbox/syb/a/n;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    iget-object v1, p0, Lcom/sphericbox/syb/a/o;->aF:Lcom/sphericbox/syb/a/n;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-object v1, p0, Lcom/sphericbox/syb/a/o;->aH:Lcom/sphericbox/syb/a/n;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget-object v1, p0, Lcom/sphericbox/syb/a/o;->aG:Lcom/sphericbox/syb/a/n;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sphericbox/syb/a/o;->aE:Lcom/sphericbox/syb/a/n;

    iget-object v1, p0, Lcom/sphericbox/syb/a/o;->aE:Lcom/sphericbox/syb/a/n;

    invoke-virtual {v1}, Lcom/sphericbox/syb/a/n;->describeContents()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 40
    iget-object v0, p0, Lcom/sphericbox/syb/a/o;->aF:Lcom/sphericbox/syb/a/n;

    iget-object v1, p0, Lcom/sphericbox/syb/a/o;->aF:Lcom/sphericbox/syb/a/n;

    invoke-virtual {v1}, Lcom/sphericbox/syb/a/n;->describeContents()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 41
    iget-object v0, p0, Lcom/sphericbox/syb/a/o;->aG:Lcom/sphericbox/syb/a/n;

    iget-object v1, p0, Lcom/sphericbox/syb/a/o;->aG:Lcom/sphericbox/syb/a/n;

    invoke-virtual {v1}, Lcom/sphericbox/syb/a/n;->describeContents()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 42
    iget-object v0, p0, Lcom/sphericbox/syb/a/o;->aH:Lcom/sphericbox/syb/a/n;

    iget-object v1, p0, Lcom/sphericbox/syb/a/o;->aH:Lcom/sphericbox/syb/a/n;

    invoke-virtual {v1}, Lcom/sphericbox/syb/a/n;->describeContents()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 43
    return-void
.end method
