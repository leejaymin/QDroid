.class final Lcom/google/android/googleapps/GoogleLoginCredentialsResult$1;
.super Ljava/lang/Object;
.source "GoogleLoginCredentialsResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googleapps/GoogleLoginCredentialsResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/googleapps/GoogleLoginCredentialsResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/googleapps/GoogleLoginCredentialsResult;
    .locals 2
    .parameter "in"

    .prologue
    .line 133
    new-instance v0, Lcom/google/android/googleapps/GoogleLoginCredentialsResult;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/googleapps/GoogleLoginCredentialsResult;-><init>(Landroid/os/Parcel;Lcom/google/android/googleapps/GoogleLoginCredentialsResult$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Lcom/google/android/googleapps/GoogleLoginCredentialsResult$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/googleapps/GoogleLoginCredentialsResult;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/googleapps/GoogleLoginCredentialsResult;
    .locals 1
    .parameter "size"

    .prologue
    .line 137
    new-array v0, p1, [Lcom/google/android/googleapps/GoogleLoginCredentialsResult;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Lcom/google/android/googleapps/GoogleLoginCredentialsResult$1;->newArray(I)[Lcom/google/android/googleapps/GoogleLoginCredentialsResult;

    move-result-object v0

    return-object v0
.end method
