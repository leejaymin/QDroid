.class public Lcom/stericson/RootTools/Symlink;
.super Ljava/lang/Object;
.source "Symlink.java"


# instance fields
.field protected final file:Ljava/io/File;

.field protected final symlinkPath:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/io/File;)V
    .locals 0
    .parameter "file"
    .parameter "path"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/stericson/RootTools/Symlink;->file:Ljava/io/File;

    .line 33
    iput-object p2, p0, Lcom/stericson/RootTools/Symlink;->symlinkPath:Ljava/io/File;

    .line 34
    return-void
.end method


# virtual methods
.method public getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/stericson/RootTools/Symlink;->file:Ljava/io/File;

    return-object v0
.end method

.method public getSymlinkPath()Ljava/io/File;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/stericson/RootTools/Symlink;->symlinkPath:Ljava/io/File;

    return-object v0
.end method
