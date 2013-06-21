.class public Lexam/thread/ANR2;
.super Landroid/app/Activity;
.source "ANR2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field bUploading:Z

.field public mCompleteHandler:Landroid/os/Handler;

.field mUpload:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lexam/thread/ANR2;->bUploading:Z

    .line 36
    new-instance v0, Lexam/thread/ANR2$1;

    invoke-direct {v0, p0}, Lexam/thread/ANR2$1;-><init>(Lexam/thread/ANR2;)V

    iput-object v0, p0, Lexam/thread/ANR2;->mCompleteHandler:Landroid/os/Handler;

    .line 9
    return-void
.end method


# virtual methods
.method doUpload()V
    .locals 3

    .prologue
    .line 44
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    .line 47
    return-void

    .line 45
    :cond_0
    const-wide/16 v1, 0x64

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 45
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 34
    :cond_0
    :goto_0
    return-void

    .line 23
    :pswitch_0
    iget-boolean v1, p0, Lexam/thread/ANR2;->bUploading:Z

    if-nez v1, :cond_0

    .line 24
    new-instance v0, Lexam/thread/ANR2$2;

    invoke-direct {v0, p0}, Lexam/thread/ANR2$2;-><init>(Lexam/thread/ANR2;)V

    .line 30
    .local v0, uploadThread:Ljava/lang/Thread;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lexam/thread/ANR2;->bUploading:Z

    .line 31
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 21
    :pswitch_data_0
    .packed-switch 0x7f0c0074
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 13
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    const v0, 0x7f03005e

    invoke-virtual {p0, v0}, Lexam/thread/ANR2;->setContentView(I)V

    .line 16
    const v0, 0x7f0c0074

    invoke-virtual {p0, v0}, Lexam/thread/ANR2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lexam/thread/ANR2;->mUpload:Landroid/widget/Button;

    .line 17
    iget-object v0, p0, Lexam/thread/ANR2;->mUpload:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    return-void
.end method
