.class Lcom/ui/LapseIt/project/ProjectPreview$PreviewThread;
.super Ljava/lang/Thread;
.source "ProjectPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ui/LapseIt/project/ProjectPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PreviewThread"
.end annotation


# instance fields
.field isFinished:Z

.field final synthetic this$0:Lcom/ui/LapseIt/project/ProjectPreview;


# direct methods
.method public constructor <init>(Lcom/ui/LapseIt/project/ProjectPreview;)V
    .locals 1
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/ui/LapseIt/project/ProjectPreview$PreviewThread;->this$0:Lcom/ui/LapseIt/project/ProjectPreview;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 125
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ui/LapseIt/project/ProjectPreview;->isPaused:Z

    .line 126
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 130
    invoke-static {}, Lcom/ui/LapseIt/project/TrimWidget;->getStartFrame()I

    move-result v1

    sput v1, Lcom/ui/LapseIt/project/ProjectPreview;->showFrame:I

    .line 132
    invoke-static {}, Lcom/ui/LapseIt/project/ProjectPreview;->access$2()Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-static {}, Lcom/ui/LapseIt/project/TrimWidget;->getEndFrame()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 134
    :cond_0
    :goto_0
    sget v1, Lcom/ui/LapseIt/project/ProjectPreview;->showFrame:I

    invoke-static {}, Lcom/ui/LapseIt/project/TrimWidget;->getEndFrame()I

    move-result v2

    if-gt v1, v2, :cond_1

    sget v1, Lcom/ui/LapseIt/project/ProjectPreview;->showFrame:I

    iget-object v2, p0, Lcom/ui/LapseIt/project/ProjectPreview$PreviewThread;->this$0:Lcom/ui/LapseIt/project/ProjectPreview;

    #getter for: Lcom/ui/LapseIt/project/ProjectPreview;->framesList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/ui/LapseIt/project/ProjectPreview;->access$3(Lcom/ui/LapseIt/project/ProjectPreview;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/ui/LapseIt/project/ProjectPreview$PreviewThread;->isFinished:Z

    if-eqz v1, :cond_3

    .line 160
    :cond_1
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 162
    sput-boolean v3, Lcom/ui/LapseIt/project/ProjectPreview;->isPreviewning:Z

    .line 164
    invoke-static {}, Lcom/ui/LapseIt/project/ProjectPreview;->access$6()I

    move-result v1

    invoke-static {}, Lcom/ui/LapseIt/project/TrimWidget;->getEndFrame()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-ne v1, v2, :cond_2

    .line 165
    invoke-static {}, Lcom/ui/LapseIt/project/TrimWidget;->getStartFrame()I

    move-result v1

    invoke-static {v1}, Lcom/ui/LapseIt/project/ProjectPreview;->access$5(I)V

    .line 166
    invoke-static {}, Lcom/ui/LapseIt/project/ProjectView;->getProjectView()Lcom/ui/LapseIt/project/ProjectView;

    move-result-object v1

    invoke-static {}, Lcom/ui/LapseIt/project/ProjectPreview;->access$7()Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ui/LapseIt/project/ProjectView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 169
    :cond_2
    sput-boolean v3, Lcom/ui/LapseIt/project/ProjectPreview;->isPaused:Z

    .line 171
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ui/LapseIt/project/ProjectPreview$PreviewThread;->isFinished:Z

    .line 172
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/ui/LapseIt/project/ProjectPreview;->access$8(Lcom/ui/LapseIt/project/ProjectPreview$PreviewThread;)V

    .line 174
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 175
    return-void

    .line 137
    :cond_3
    :try_start_0
    sget-boolean v1, Lcom/ui/LapseIt/project/ProjectPreview;->isPaused:Z

    if-nez v1, :cond_5

    .line 138
    sget-boolean v1, Lcom/ui/LapseIt/project/ProjectPreview;->isBackwards:Z

    if-nez v1, :cond_4

    .line 139
    iget-object v1, p0, Lcom/ui/LapseIt/project/ProjectPreview$PreviewThread;->this$0:Lcom/ui/LapseIt/project/ProjectPreview;

    #getter for: Lcom/ui/LapseIt/project/ProjectPreview;->framesList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/ui/LapseIt/project/ProjectPreview;->access$3(Lcom/ui/LapseIt/project/ProjectPreview;)Ljava/util/ArrayList;

    move-result-object v1

    sget v2, Lcom/ui/LapseIt/project/ProjectPreview;->showFrame:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/ui/LapseIt/project/ProjectPreview;->drawBitmap(Ljava/lang/String;)V

    .line 144
    :goto_1
    invoke-static {}, Lcom/ui/LapseIt/project/ProjectPreview;->access$2()Landroid/widget/ProgressBar;

    move-result-object v1

    sget v2, Lcom/ui/LapseIt/project/ProjectPreview;->showFrame:I

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 145
    sget v1, Lcom/ui/LapseIt/project/ProjectPreview;->showFrame:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/ui/LapseIt/project/ProjectPreview;->showFrame:I

    .line 147
    sget v1, Lcom/ui/LapseIt/project/ProjectPreview;->showFrame:I

    invoke-static {v1}, Lcom/ui/LapseIt/project/ProjectPreview;->access$5(I)V

    .line 149
    sget v1, Lcom/ui/LapseIt/project/ProjectPreview;->showFrame:I

    invoke-static {}, Lcom/ui/LapseIt/project/TrimWidget;->getEndFrame()I

    move-result v2

    if-le v1, v2, :cond_0

    sget-boolean v1, Lcom/ui/LapseIt/project/ProjectPreview;->isLooping:Z

    if-eqz v1, :cond_0

    .line 150
    invoke-static {}, Lcom/ui/LapseIt/project/TrimWidget;->getStartFrame()I

    move-result v1

    sput v1, Lcom/ui/LapseIt/project/ProjectPreview;->showFrame:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 141
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4
    :try_start_1
    iget-object v1, p0, Lcom/ui/LapseIt/project/ProjectPreview$PreviewThread;->this$0:Lcom/ui/LapseIt/project/ProjectPreview;

    #getter for: Lcom/ui/LapseIt/project/ProjectPreview;->backFramesList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/ui/LapseIt/project/ProjectPreview;->access$4(Lcom/ui/LapseIt/project/ProjectPreview;)Ljava/util/ArrayList;

    move-result-object v1

    sget v2, Lcom/ui/LapseIt/project/ProjectPreview;->showFrame:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/ui/LapseIt/project/ProjectPreview;->drawBitmap(Ljava/lang/String;)V

    goto :goto_1

    .line 153
    :cond_5
    const-wide/16 v1, 0x32

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
