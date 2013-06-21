.class Lcom/fleapapa/helper/Avatar$1;
.super Ljava/lang/Object;
.source "Avatar.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/Avatar;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/Avatar;

.field private final synthetic val$adapter:Lcom/fleapapa/helper/Avatar$AvatarAdapter;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/Avatar;Lcom/fleapapa/helper/Avatar$AvatarAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/Avatar$1;->this$0:Lcom/fleapapa/helper/Avatar;

    iput-object p2, p0, Lcom/fleapapa/helper/Avatar$1;->val$adapter:Lcom/fleapapa/helper/Avatar$AvatarAdapter;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/fleapapa/helper/Avatar$1;->val$adapter:Lcom/fleapapa/helper/Avatar$AvatarAdapter;

    invoke-virtual {v0, p3}, Lcom/fleapapa/helper/Avatar$AvatarAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/fleapapa/util/My;->avatar:I

    .line 62
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "avatar-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/fleapapa/util/My;->user:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcom/fleapapa/util/My;->avatar:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/fleapapa/util/MyUtil;->putPreference([Ljava/lang/String;)V

    .line 63
    sget-object v0, Lcom/fleapapa/util/My;->ue:Lcom/fleapapa/helper/CallPapa$UE;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/fleapapa/util/My;->ue:Lcom/fleapapa/helper/CallPapa$UE;

    sget v1, Lcom/fleapapa/util/My;->avatar:I

    iput v1, v0, Lcom/fleapapa/helper/CallPapa$UE;->avatar:I

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/fleapapa/helper/Avatar$1;->this$0:Lcom/fleapapa/helper/Avatar;

    invoke-virtual {v0}, Lcom/fleapapa/helper/Avatar;->finish()V

    .line 65
    return-void
.end method
