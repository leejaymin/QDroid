.class public Lcom/fleapapa/helper/QA;
.super Ljava/lang/Object;
.source "QA.java"


# instance fields
.field bPrivate:Z

.field feedback:Ljava/lang/String;

.field iid:I

.field lati:I

.field level:I

.field loni:I

.field qid:I

.field rating:I

.field rid:I

.field tago:Ljava/lang/String;

.field time:Ljava/lang/String;

.field uid:I

.field user:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/fleapapa/helper/Item;IIILjava/lang/String;ILjava/lang/String;)V
    .locals 1
    .parameter "item"
    .parameter "qid"
    .parameter "rid"
    .parameter "uid"
    .parameter "user"
    .parameter "rating"
    .parameter "time"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iget v0, p1, Lcom/fleapapa/helper/Item;->iid:I

    iput v0, p0, Lcom/fleapapa/helper/QA;->iid:I

    .line 18
    iput p2, p0, Lcom/fleapapa/helper/QA;->qid:I

    .line 19
    iput p3, p0, Lcom/fleapapa/helper/QA;->rid:I

    .line 20
    iput p4, p0, Lcom/fleapapa/helper/QA;->uid:I

    .line 21
    iput-object p5, p0, Lcom/fleapapa/helper/QA;->user:Ljava/lang/String;

    .line 22
    iput p6, p0, Lcom/fleapapa/helper/QA;->rating:I

    .line 23
    iput-object p7, p0, Lcom/fleapapa/helper/QA;->time:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/fleapapa/helper/QA;->feedback:Ljava/lang/String;

    .line 25
    iget-object v0, p1, Lcom/fleapapa/helper/Item;->qas:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 26
    return-void
.end method
