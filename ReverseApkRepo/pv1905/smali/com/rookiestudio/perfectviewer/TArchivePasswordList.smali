.class public Lcom/rookiestudio/perfectviewer/TArchivePasswordList;
.super Ljava/lang/Object;
.source "TArchivePasswordList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rookiestudio/perfectviewer/TArchivePasswordList$TPasswordItem;
    }
.end annotation


# instance fields
.field public PasswordList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/rookiestudio/perfectviewer/TArchivePasswordList$TPasswordItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TArchivePasswordList;->PasswordList:Ljava/util/ArrayList;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TArchivePasswordList;->PasswordList:Ljava/util/ArrayList;

    .line 15
    return-void
.end method


# virtual methods
.method public Add(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "ArchiveName"
    .parameter "Password"

    .prologue
    .line 19
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TArchivePasswordList;->PasswordList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 25
    new-instance v0, Lcom/rookiestudio/perfectviewer/TArchivePasswordList$TPasswordItem;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/rookiestudio/perfectviewer/TArchivePasswordList$TPasswordItem;-><init>(Lcom/rookiestudio/perfectviewer/TArchivePasswordList;Lcom/rookiestudio/perfectviewer/TArchivePasswordList$TPasswordItem;)V

    .line 26
    .local v0, PasswordItem:Lcom/rookiestudio/perfectviewer/TArchivePasswordList$TPasswordItem;
    iput-object p1, v0, Lcom/rookiestudio/perfectviewer/TArchivePasswordList$TPasswordItem;->ArchiveName:Ljava/lang/String;

    .line 27
    iput-object p2, v0, Lcom/rookiestudio/perfectviewer/TArchivePasswordList$TPasswordItem;->Password:Ljava/lang/String;

    .line 28
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TArchivePasswordList;->PasswordList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    :goto_0
    return-void

    .line 19
    .end local v0           #PasswordItem:Lcom/rookiestudio/perfectviewer/TArchivePasswordList$TPasswordItem;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rookiestudio/perfectviewer/TArchivePasswordList$TPasswordItem;

    .line 20
    .restart local v0       #PasswordItem:Lcom/rookiestudio/perfectviewer/TArchivePasswordList$TPasswordItem;
    iget-object v2, v0, Lcom/rookiestudio/perfectviewer/TArchivePasswordList$TPasswordItem;->ArchiveName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 21
    iput-object p2, v0, Lcom/rookiestudio/perfectviewer/TArchivePasswordList$TPasswordItem;->Password:Ljava/lang/String;

    goto :goto_0
.end method

.method public Clear()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TArchivePasswordList;->PasswordList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 44
    return-void
.end method

.method public Find(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "ArchiveName"

    .prologue
    .line 33
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TArchivePasswordList;->PasswordList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 38
    const-string v1, ""

    :goto_0
    return-object v1

    .line 33
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rookiestudio/perfectviewer/TArchivePasswordList$TPasswordItem;

    .line 34
    .local v0, PasswordItem:Lcom/rookiestudio/perfectviewer/TArchivePasswordList$TPasswordItem;
    iget-object v2, v0, Lcom/rookiestudio/perfectviewer/TArchivePasswordList$TPasswordItem;->ArchiveName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 35
    iget-object v1, v0, Lcom/rookiestudio/perfectviewer/TArchivePasswordList$TPasswordItem;->Password:Ljava/lang/String;

    goto :goto_0
.end method
