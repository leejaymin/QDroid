.class public Lcom/google/android/googleapps/GoogleLoginCredentialsResult;
.super Ljava/lang/Object;
.source "GoogleLoginCredentialsResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/googleapps/GoogleLoginCredentialsResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAccount:Ljava/lang/String;

.field private mCredentialsIntent:Landroid/content/Intent;

.field private mCredentialsString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 130
    new-instance v0, Lcom/google/android/googleapps/GoogleLoginCredentialsResult$1;

    invoke-direct {v0}, Lcom/google/android/googleapps/GoogleLoginCredentialsResult$1;-><init>()V

    sput-object v0, Lcom/google/android/googleapps/GoogleLoginCredentialsResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object v0, p0, Lcom/google/android/googleapps/GoogleLoginCredentialsResult;->mCredentialsString:Ljava/lang/String;

    .line 91
    iput-object v0, p0, Lcom/google/android/googleapps/GoogleLoginCredentialsResult;->mCredentialsIntent:Landroid/content/Intent;

    .line 92
    iput-object v0, p0, Lcom/google/android/googleapps/GoogleLoginCredentialsResult;->mAccount:Ljava/lang/String;

    .line 93
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    invoke-virtual {p0, p1}, Lcom/google/android/googleapps/GoogleLoginCredentialsResult;->readFromParcel(Landroid/os/Parcel;)V

    .line 143
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/googleapps/GoogleLoginCredentialsResult$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/google/android/googleapps/GoogleLoginCredentialsResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/googleapps/GoogleLoginCredentialsResult;->mCredentialsIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/googleapps/GoogleLoginCredentialsResult;->mCredentialsIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->describeContents()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/googleapps/GoogleLoginCredentialsResult;->mAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getCredentialsIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/googleapps/GoogleLoginCredentialsResult;->mCredentialsIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getCredentialsString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/googleapps/GoogleLoginCredentialsResult;->mCredentialsString:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/googleapps/GoogleLoginCredentialsResult;->mAccount:Ljava/lang/String;

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/googleapps/GoogleLoginCredentialsResult;->mCredentialsString:Ljava/lang/String;

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 150
    .local v0, hasIntent:I
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/googleapps/GoogleLoginCredentialsResult;->mCredentialsIntent:Landroid/content/Intent;

    .line 151
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 152
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iput-object v1, p0, Lcom/google/android/googleapps/GoogleLoginCredentialsResult;->mCredentialsIntent:Landroid/content/Intent;

    .line 153
    iget-object v1, p0, Lcom/google/android/googleapps/GoogleLoginCredentialsResult;->mCredentialsIntent:Landroid/content/Intent;

    invoke-virtual {v1, p1}, Landroid/content/Intent;->readFromParcel(Landroid/os/Parcel;)V

    .line 155
    :cond_0
    return-void
.end method

.method public setAccount(Ljava/lang/String;)V
    .locals 0
    .parameter "account"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/google/android/googleapps/GoogleLoginCredentialsResult;->mAccount:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setCredentialsIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/google/android/googleapps/GoogleLoginCredentialsResult;->mCredentialsIntent:Landroid/content/Intent;

    .line 103
    return-void
.end method

.method public setCredentialsString(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/google/android/googleapps/GoogleLoginCredentialsResult;->mCredentialsString:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "flags"

    .prologue
    const/4 v1, 0x0

    .line 120
    iget-object v0, p0, Lcom/google/android/googleapps/GoogleLoginCredentialsResult;->mAccount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/google/android/googleapps/GoogleLoginCredentialsResult;->mCredentialsString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/google/android/googleapps/GoogleLoginCredentialsResult;->mCredentialsIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 123
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    iget-object v0, p0, Lcom/google/android/googleapps/GoogleLoginCredentialsResult;->mCredentialsIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 128
    :goto_0
    return-void

    .line 126
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
