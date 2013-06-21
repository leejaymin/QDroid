.class Lcom/jjcgames/android/airhockey/PostMatchActivity$2;
.super Ljava/lang/Object;
.source "PostMatchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jjcgames/android/airhockey/PostMatchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jjcgames/android/airhockey/PostMatchActivity;

.field private final synthetic val$level:I


# direct methods
.method constructor <init>(Lcom/jjcgames/android/airhockey/PostMatchActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jjcgames/android/airhockey/PostMatchActivity$2;->this$0:Lcom/jjcgames/android/airhockey/PostMatchActivity;

    iput p2, p0, Lcom/jjcgames/android/airhockey/PostMatchActivity$2;->val$level:I

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 15
    .parameter "v"

    .prologue
    .line 86
    iget-object v9, p0, Lcom/jjcgames/android/airhockey/PostMatchActivity$2;->this$0:Lcom/jjcgames/android/airhockey/PostMatchActivity;

    const v10, 0x7f08000c

    invoke-virtual {v9, v10}, Lcom/jjcgames/android/airhockey/PostMatchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 88
    .local v6, progress:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v9

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v10

    .line 89
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 87
    invoke-static {v9, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 91
    .local v0, b:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 92
    .local v2, c:Landroid/graphics/Canvas;
    iget-object v9, p0, Lcom/jjcgames/android/airhockey/PostMatchActivity$2;->this$0:Lcom/jjcgames/android/airhockey/PostMatchActivity;

    .line 93
    const-string v10, "interfacebackground"

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v9, v10, v11, v12}, Lcom/jjcgames/android/airhockey/Game;->getBitmap(Landroid/content/Context;Ljava/lang/String;ZZ)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 94
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 92
    invoke-virtual {v2, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 95
    invoke-virtual {v6, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 97
    iget-object v9, p0, Lcom/jjcgames/android/airhockey/PostMatchActivity$2;->this$0:Lcom/jjcgames/android/airhockey/PostMatchActivity;

    invoke-virtual {v9}, Lcom/jjcgames/android/airhockey/PostMatchActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 99
    .local v3, cr:Landroid/content/ContentResolver;
    iget-object v9, p0, Lcom/jjcgames/android/airhockey/PostMatchActivity$2;->this$0:Lcom/jjcgames/android/airhockey/PostMatchActivity;

    const v10, 0x7f060039

    invoke-virtual {v9, v10}, Lcom/jjcgames/android/airhockey/PostMatchActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    .line 98
    invoke-static {v3, v0, v9, v10}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 100
    .local v8, url:Ljava/lang/String;
    if-nez v8, :cond_0

    .line 125
    :goto_0
    return-void

    .line 106
    :cond_0
    new-instance v4, Landroid/content/Intent;

    const-string v9, "android.intent.action.SEND"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 107
    .local v4, in:Landroid/content/Intent;
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 108
    .local v7, uri:Landroid/net/Uri;
    const-string v9, "android.intent.extra.SUBJECT"

    .line 109
    iget-object v10, p0, Lcom/jjcgames/android/airhockey/PostMatchActivity$2;->this$0:Lcom/jjcgames/android/airhockey/PostMatchActivity;

    const v11, 0x7f06003a

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget v14, p0, Lcom/jjcgames/android/airhockey/PostMatchActivity$2;->val$level:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Lcom/jjcgames/android/airhockey/PostMatchActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 108
    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    invoke-virtual {v3, v7}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    .line 111
    .local v5, mime:Ljava/lang/String;
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    iget-object v9, p0, Lcom/jjcgames/android/airhockey/PostMatchActivity$2;->this$0:Lcom/jjcgames/android/airhockey/PostMatchActivity;

    const v10, 0x7f06003b

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, p0, Lcom/jjcgames/android/airhockey/PostMatchActivity$2;->val$level:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Lcom/jjcgames/android/airhockey/PostMatchActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, body:Ljava/lang/String;
    const-string v9, "android.intent.extra.TEXT"

    invoke-virtual {v4, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    const-string v9, "sms_body"

    invoke-virtual {v4, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    const-string v9, "android.intent.extra.STREAM"

    invoke-virtual {v4, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 121
    :try_start_0
    iget-object v9, p0, Lcom/jjcgames/android/airhockey/PostMatchActivity$2;->this$0:Lcom/jjcgames/android/airhockey/PostMatchActivity;

    invoke-virtual {v9, v4}, Lcom/jjcgames/android/airhockey/PostMatchActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 122
    :catch_0
    move-exception v9

    goto :goto_0
.end method
