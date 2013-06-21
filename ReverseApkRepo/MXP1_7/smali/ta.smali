.class public Lta;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lta;->癤욱븳援(Landroid/os/Parcel;)Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lta;->癤욱븳援(I)[Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public 癤욱븳援(Landroid/os/Parcel;)Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar$SavedState;
    .locals 2

    new-instance v0, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar$SavedState;-><init>(Landroid/os/Parcel;Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar$SavedState;)V

    return-object v0
.end method

.method public 癤욱븳援(I)[Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar$SavedState;
    .locals 1

    new-array v0, p1, [Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar$SavedState;

    return-object v0
.end method
