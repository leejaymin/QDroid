.class Lexam/Data/FileIO$1;
.super Ljava/lang/Object;
.source "FileIO.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexam/Data/FileIO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/Data/FileIO;


# direct methods
.method constructor <init>(Lexam/Data/FileIO;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/Data/FileIO$1;->this$0:Lexam/Data/FileIO;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const/4 v8, -0x1

    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 67
    :goto_0
    :pswitch_0
    return-void

    .line 30
    :pswitch_1
    :try_start_0
    iget-object v6, p0, Lexam/Data/FileIO$1;->this$0:Lexam/Data/FileIO;

    const-string v7, "test.txt"

    .line 31
    const/4 v8, 0x1

    .line 30
    invoke-virtual {v6, v7, v8}, Lexam/Data/FileIO;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 32
    .local v3, fos:Ljava/io/FileOutputStream;
    const-string v5, "Android File IO Test"

    .line 33
    .local v5, str:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 34
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 35
    iget-object v6, p0, Lexam/Data/FileIO$1;->this$0:Lexam/Data/FileIO;

    iget-object v6, v6, Lexam/Data/FileIO;->mEdit:Landroid/widget/EditText;

    const-string v7, "write success"

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 36
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .end local v5           #str:Ljava/lang/String;
    :catch_0
    move-exception v6

    goto :goto_0

    .line 40
    :pswitch_2
    :try_start_1
    iget-object v6, p0, Lexam/Data/FileIO$1;->this$0:Lexam/Data/FileIO;

    const-string v7, "test.txt"

    invoke-virtual {v6, v7}, Lexam/Data/FileIO;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 41
    .local v2, fis:Ljava/io/FileInputStream;
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v6

    new-array v0, v6, [B

    .line 42
    .local v0, data:[B
    :cond_0
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    if-ne v6, v8, :cond_0

    .line 43
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 44
    iget-object v6, p0, Lexam/Data/FileIO$1;->this$0:Lexam/Data/FileIO;

    iget-object v6, v6, Lexam/Data/FileIO;->mEdit:Landroid/widget/EditText;

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 45
    .end local v0           #data:[B
    .end local v2           #fis:Ljava/io/FileInputStream;
    :catch_1
    move-exception v1

    .line 46
    .local v1, e:Ljava/io/FileNotFoundException;
    iget-object v6, p0, Lexam/Data/FileIO$1;->this$0:Lexam/Data/FileIO;

    iget-object v6, v6, Lexam/Data/FileIO;->mEdit:Landroid/widget/EditText;

    const-string v7, "File Not Found"

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 52
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :pswitch_3
    :try_start_2
    iget-object v6, p0, Lexam/Data/FileIO$1;->this$0:Lexam/Data/FileIO;

    invoke-virtual {v6}, Lexam/Data/FileIO;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f050004

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    .line 53
    .local v4, fres:Ljava/io/InputStream;
    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v6

    new-array v0, v6, [B

    .line 54
    .restart local v0       #data:[B
    :cond_1
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-ne v6, v8, :cond_1

    .line 55
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 56
    iget-object v6, p0, Lexam/Data/FileIO$1;->this$0:Lexam/Data/FileIO;

    iget-object v6, v6, Lexam/Data/FileIO;->mEdit:Landroid/widget/EditText;

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 57
    .end local v0           #data:[B
    .end local v4           #fres:Ljava/io/InputStream;
    :catch_2
    move-exception v6

    goto :goto_0

    .line 60
    :pswitch_4
    iget-object v6, p0, Lexam/Data/FileIO$1;->this$0:Lexam/Data/FileIO;

    const-string v7, "test.txt"

    invoke-virtual {v6, v7}, Lexam/Data/FileIO;->deleteFile(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 61
    iget-object v6, p0, Lexam/Data/FileIO$1;->this$0:Lexam/Data/FileIO;

    iget-object v6, v6, Lexam/Data/FileIO;->mEdit:Landroid/widget/EditText;

    const-string v7, "delete success"

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 63
    :cond_2
    iget-object v6, p0, Lexam/Data/FileIO$1;->this$0:Lexam/Data/FileIO;

    iget-object v6, v6, Lexam/Data/FileIO;->mEdit:Landroid/widget/EditText;

    const-string v7, "delete failed"

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 48
    :catch_3
    move-exception v6

    goto/16 :goto_0

    .line 27
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0016
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
