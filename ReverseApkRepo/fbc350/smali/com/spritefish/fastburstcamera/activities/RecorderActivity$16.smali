.class Lcom/spritefish/fastburstcamera/activities/RecorderActivity$16;
.super Ljava/lang/Object;
.source "RecorderActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->initUiControls()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;


# direct methods
.method constructor <init>(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$16;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    .line 1175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1179
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$16;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    #calls: Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->liteMenus()Z
    invoke-static {v0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->access$21(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1181
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$16;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$16;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    const v3, 0x7f070077

    invoke-virtual {v2, v3}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->showLiteStartInfoSpecific(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->access$22(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;Ljava/lang/String;)V

    .line 1213
    :goto_0
    return-void

    .line 1185
    :cond_0
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$16;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->soundOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1187
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$16;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->soundOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1188
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$16;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    #calls: Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->updateSoundButton()V
    invoke-static {v0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->access$3(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)V

    .line 1190
    :try_start_0
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$16;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sound"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1191
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1200
    :cond_1
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$16;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->soundButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->access$23(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$16;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    invoke-virtual {v1}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020026

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1201
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$16;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->soundOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1202
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$16;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    #calls: Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->updateSoundButton()V
    invoke-static {v0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->access$3(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)V

    .line 1204
    :try_start_1
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$16;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sound"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1205
    :catch_1
    move-exception v0

    goto :goto_0
.end method
