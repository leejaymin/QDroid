.class Lcom/fleapapa/helper/CallGrps$GroupAdapter$1$1;
.super Ljava/lang/Object;
.source "CallGrps.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/CallGrps$GroupAdapter$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/fleapapa/helper/CallGrps$GroupAdapter$1;

.field private final synthetic val$grp:Lcom/fleapapa/helper/Group;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/CallGrps$GroupAdapter$1;Lcom/fleapapa/helper/Group;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/CallGrps$GroupAdapter$1$1;->this$2:Lcom/fleapapa/helper/CallGrps$GroupAdapter$1;

    iput-object p2, p0, Lcom/fleapapa/helper/CallGrps$GroupAdapter$1$1;->val$grp:Lcom/fleapapa/helper/Group;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichMyImageButton"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/fleapapa/helper/CallGrps$GroupAdapter$1$1;->this$2:Lcom/fleapapa/helper/CallGrps$GroupAdapter$1;

    #getter for: Lcom/fleapapa/helper/CallGrps$GroupAdapter$1;->this$1:Lcom/fleapapa/helper/CallGrps$GroupAdapter;
    invoke-static {v0}, Lcom/fleapapa/helper/CallGrps$GroupAdapter$1;->access$0(Lcom/fleapapa/helper/CallGrps$GroupAdapter$1;)Lcom/fleapapa/helper/CallGrps$GroupAdapter;

    move-result-object v0

    #getter for: Lcom/fleapapa/helper/CallGrps$GroupAdapter;->this$0:Lcom/fleapapa/helper/CallGrps;
    invoke-static {v0}, Lcom/fleapapa/helper/CallGrps$GroupAdapter;->access$0(Lcom/fleapapa/helper/CallGrps$GroupAdapter;)Lcom/fleapapa/helper/CallGrps;

    move-result-object v0

    iget-object v0, v0, Lcom/fleapapa/helper/CallGrps;->gadapter:Lcom/fleapapa/helper/CallGrps$GroupAdapter;

    iget-object v1, p0, Lcom/fleapapa/helper/CallGrps$GroupAdapter$1$1;->val$grp:Lcom/fleapapa/helper/Group;

    invoke-virtual {v0, v1}, Lcom/fleapapa/helper/CallGrps$GroupAdapter;->remove(Ljava/lang/Object;)V

    .line 165
    sget-object v0, Lcom/fleapapa/helper/CallGrps;->groups:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/fleapapa/helper/CallGrps$GroupAdapter$1$1;->val$grp:Lcom/fleapapa/helper/Group;

    iget-object v1, v1, Lcom/fleapapa/helper/Group;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const/4 v0, 0x1

    sput-boolean v0, Lcom/fleapapa/helper/CallGrps;->gdirty:Z

    .line 167
    return-void
.end method
