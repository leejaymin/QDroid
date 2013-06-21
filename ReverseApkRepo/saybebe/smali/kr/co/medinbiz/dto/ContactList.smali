.class public Lkr/co/medinbiz/dto/ContactList;
.super Ljava/lang/Object;
.source "ContactList.java"


# instance fields
.field private contacts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lkr/co/medinbiz/dto/Contact;",
            ">;"
        }
    .end annotation
.end field

.field private result:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContacts()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lkr/co/medinbiz/dto/Contact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 15
    iget-object v0, p0, Lkr/co/medinbiz/dto/ContactList;->contacts:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lkr/co/medinbiz/dto/ContactList;->result:Ljava/lang/String;

    return-object v0
.end method

.method public setContacts(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lkr/co/medinbiz/dto/Contact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p1, contacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lkr/co/medinbiz/dto/Contact;>;"
    iput-object p1, p0, Lkr/co/medinbiz/dto/ContactList;->contacts:Ljava/util/ArrayList;

    .line 19
    return-void
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 12
    iput-object p1, p0, Lkr/co/medinbiz/dto/ContactList;->result:Ljava/lang/String;

    .line 13
    return-void
.end method
