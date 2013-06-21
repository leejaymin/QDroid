.class final Lcom/sphericbox/syb/a/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sphericbox/syb/a/g;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/sphericbox/syb/a/t;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/sphericbox/syb/a/o;
    .locals 1
    .parameter

    .prologue
    .line 80
    new-instance v0, Lcom/sphericbox/syb/a/o;

    invoke-direct {v0, p1}, Lcom/sphericbox/syb/a/o;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public c(I)[Lcom/sphericbox/syb/a/o;
    .locals 1
    .parameter

    .prologue
    .line 85
    new-array v0, p1, [Lcom/sphericbox/syb/a/o;

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Lcom/sphericbox/syb/a/t;->a(Landroid/os/Parcel;)Lcom/sphericbox/syb/a/o;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Lcom/sphericbox/syb/a/t;->c(I)[Lcom/sphericbox/syb/a/o;

    move-result-object v0

    return-object v0
.end method
