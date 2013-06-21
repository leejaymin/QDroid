.class Lexam/Data/ShareFile$1;
.super Ljava/lang/Object;
.source "ShareFile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexam/Data/ShareFile;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/Data/ShareFile;

.field private final synthetic val$edit:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lexam/Data/ShareFile;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/Data/ShareFile$1;->this$0:Lexam/Data/ShareFile;

    iput-object p2, p0, Lexam/Data/ShareFile$1;->val$edit:Landroid/widget/EditText;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 25
    :try_start_0
    iget-object v4, p0, Lexam/Data/ShareFile$1;->this$0:Lexam/Data/ShareFile;

    const-string v5, "exam.Data"

    .line 26
    const/4 v6, 0x2

    .line 25
    invoke-virtual {v4, v5, v6}, Lexam/Data/ShareFile;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 27
    .local v0, Other:Landroid/content/Context;
    const-string v4, "test.txt"

    invoke-virtual {v0, v4}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    .line 28
    .local v3, fis:Ljava/io/FileInputStream;
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v4

    new-array v1, v4, [B

    .line 29
    .local v1, data:[B
    :cond_0
    invoke-virtual {v3, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 30
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 31
    iget-object v4, p0, Lexam/Data/ShareFile$1;->val$edit:Landroid/widget/EditText;

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 39
    .end local v0           #Other:Landroid/content/Context;
    .end local v1           #data:[B
    .end local v3           #fis:Ljava/io/FileInputStream;
    :goto_0
    return-void

    .line 32
    :catch_0
    move-exception v2

    .line 33
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v4, p0, Lexam/Data/ShareFile$1;->val$edit:Landroid/widget/EditText;

    const-string v5, "Package Not Found"

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 35
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v2

    .line 36
    .local v2, e:Ljava/io/FileNotFoundException;
    iget-object v4, p0, Lexam/Data/ShareFile$1;->val$edit:Landroid/widget/EditText;

    const-string v5, "File Not Found"

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 38
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v4

    goto :goto_0
.end method
