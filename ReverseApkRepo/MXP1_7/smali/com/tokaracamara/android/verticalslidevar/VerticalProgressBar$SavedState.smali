.class public Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar$SavedState;
.super Landroid/view/View$BaseSavedState;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field 癤욱븳援:I

.field 궗:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lta;

    invoke-direct {v0}, Lta;-><init>()V

    sput-object v0, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar$SavedState;->癤욱븳援:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar$SavedState;->궗:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar$SavedState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar$SavedState;->癤욱븳援:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/tokaracamara/android/verticalslidevar/VerticalProgressBar$SavedState;->궗:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
