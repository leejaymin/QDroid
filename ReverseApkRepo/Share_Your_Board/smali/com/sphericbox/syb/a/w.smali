.class final Lcom/sphericbox/syb/a/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sphericbox/syb/a/b;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/sphericbox/syb/a/w;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Landroid/os/Parcel;)Lcom/sphericbox/syb/a/l;
    .locals 1
    .parameter

    .prologue
    .line 54
    new-instance v0, Lcom/sphericbox/syb/a/l;

    invoke-direct {v0, p1}, Lcom/sphericbox/syb/a/l;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/sphericbox/syb/a/w;->c(Landroid/os/Parcel;)Lcom/sphericbox/syb/a/l;

    move-result-object v0

    return-object v0
.end method

.method public g(I)[Lcom/sphericbox/syb/a/l;
    .locals 1
    .parameter

    .prologue
    .line 59
    new-array v0, p1, [Lcom/sphericbox/syb/a/l;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/sphericbox/syb/a/w;->g(I)[Lcom/sphericbox/syb/a/l;

    move-result-object v0

    return-object v0
.end method
