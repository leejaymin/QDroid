.class Lcom/jellybus/fx/Activity_Border_Stamp_User$3;
.super Ljava/lang/Object;
.source "Activity_Border_Stamp_User.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jellybus/fx/Activity_Border_Stamp_User;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jellybus/fx/Activity_Border_Stamp_User;


# direct methods
.method constructor <init>(Lcom/jellybus/fx/Activity_Border_Stamp_User;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User$3;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp_User;

    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 319
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User$3;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp_User;

    #getter for: Lcom/jellybus/fx/Activity_Border_Stamp_User;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Border_Stamp_User;->access$11(Lcom/jellybus/fx/Activity_Border_Stamp_User;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isStampFirst"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 320
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User$3;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp_User;

    #getter for: Lcom/jellybus/fx/Activity_Border_Stamp_User;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Border_Stamp_User;->access$11(Lcom/jellybus/fx/Activity_Border_Stamp_User;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 322
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User$3;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp_User;

    #getter for: Lcom/jellybus/fx/Activity_Border_Stamp_User;->stamp_info:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Border_Stamp_User;->access$12(Lcom/jellybus/fx/Activity_Border_Stamp_User;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 323
    return-void
.end method
