.class Lcom/jjcgames/android/airhockey/PlayerSelectActivity$1;
.super Ljava/lang/Object;
.source "PlayerSelectActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jjcgames/android/airhockey/PlayerSelectActivity;->populatePlayerList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/jjcgames/android/airhockey/Player;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jjcgames/android/airhockey/PlayerSelectActivity;


# direct methods
.method constructor <init>(Lcom/jjcgames/android/airhockey/PlayerSelectActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jjcgames/android/airhockey/PlayerSelectActivity$1;->this$0:Lcom/jjcgames/android/airhockey/PlayerSelectActivity;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/jjcgames/android/airhockey/Player;Lcom/jjcgames/android/airhockey/Player;)I
    .locals 2
    .parameter "a"
    .parameter "b"

    .prologue
    .line 150
    iget v0, p2, Lcom/jjcgames/android/airhockey/Player;->level:I

    iget v1, p1, Lcom/jjcgames/android/airhockey/Player;->level:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/jjcgames/android/airhockey/Player;

    check-cast p2, Lcom/jjcgames/android/airhockey/Player;

    invoke-virtual {p0, p1, p2}, Lcom/jjcgames/android/airhockey/PlayerSelectActivity$1;->compare(Lcom/jjcgames/android/airhockey/Player;Lcom/jjcgames/android/airhockey/Player;)I

    move-result v0

    return v0
.end method
