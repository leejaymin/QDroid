.class final Lcom/scoreloop/client/android/core/model/BaseEntity$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/model/DbAchievementsStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/scoreloop/client/android/core/model/BaseEntity$a;->a:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/scoreloop/client/android/core/model/BaseEntity$a;->b:Ljava/lang/String;

    .line 23
    return-void
.end method
