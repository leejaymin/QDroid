.class final Lcom/sphericbox/syb/a/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sphericbox/syb/a/u;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/sphericbox/syb/a/v;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/os/Parcel;)Lcom/sphericbox/syb/a/n;
    .locals 1
    .parameter

    .prologue
    .line 42
    new-instance v0, Lcom/sphericbox/syb/a/n;

    invoke-direct {v0, p1}, Lcom/sphericbox/syb/a/n;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/sphericbox/syb/a/v;->b(Landroid/os/Parcel;)Lcom/sphericbox/syb/a/n;

    move-result-object v0

    return-object v0
.end method

.method public d(I)[Lcom/sphericbox/syb/a/n;
    .locals 1
    .parameter

    .prologue
    .line 47
    new-array v0, p1, [Lcom/sphericbox/syb/a/n;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/sphericbox/syb/a/v;->d(I)[Lcom/sphericbox/syb/a/n;

    move-result-object v0

    return-object v0
.end method
