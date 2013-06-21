.class public interface abstract Lcom/scoreloop/client/android/core/model/ImageSource;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final IMAGE_SOURCE_DEFAULT:Lcom/scoreloop/client/android/core/model/ImageSource;
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_0_0;
    .end annotation
.end field

.field public static final IMAGE_SOURCE_SCORELOOP:Lcom/scoreloop/client/android/core/model/ImageSource;
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_0_0;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Lcom/scoreloop/client/android/core/model/b;

    invoke-direct {v0}, Lcom/scoreloop/client/android/core/model/b;-><init>()V

    sput-object v0, Lcom/scoreloop/client/android/core/model/ImageSource;->IMAGE_SOURCE_SCORELOOP:Lcom/scoreloop/client/android/core/model/ImageSource;

    .line 16
    new-instance v0, Lcom/scoreloop/client/android/core/model/c;

    invoke-direct {v0}, Lcom/scoreloop/client/android/core/model/c;-><init>()V

    sput-object v0, Lcom/scoreloop/client/android/core/model/ImageSource;->IMAGE_SOURCE_DEFAULT:Lcom/scoreloop/client/android/core/model/ImageSource;

    return-void
.end method


# virtual methods
.method public abstract getName()Ljava/lang/String;
.end method
