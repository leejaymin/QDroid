.class Lexam/AndroidExam/AndroidExam$Example;
.super Ljava/lang/Object;
.source "AndroidExam.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexam/AndroidExam/AndroidExam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Example"
.end annotation


# instance fields
.field Title:Ljava/lang/String;

.field cls:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lexam/AndroidExam/AndroidExam;


# direct methods
.method constructor <init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter "aTitle"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    .local p2, acls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iput-object p1, p0, Lexam/AndroidExam/AndroidExam$Example;->this$0:Lexam/AndroidExam/AndroidExam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p2, p0, Lexam/AndroidExam/AndroidExam$Example;->cls:Ljava/lang/Class;

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lexam/AndroidExam/AndroidExam$Example;->cls:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lexam/AndroidExam/AndroidExam$Example;->Title:Ljava/lang/String;

    .line 31
    return-void
.end method
