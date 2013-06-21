.class public abstract Lcom/badlogic/gdx/utils/g;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/badlogic/gdx/utils/a;

.field public final b:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/a;

    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/a;-><init>(ZI)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/g;->a:Lcom/badlogic/gdx/utils/a;

    const/16 v0, 0xc8

    iput v0, p0, Lcom/badlogic/gdx/utils/g;->b:I

    return-void
.end method


# virtual methods
.method protected abstract a()Ljava/lang/Object;
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "object cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/g;->a:Lcom/badlogic/gdx/utils/a;

    iget v0, v0, Lcom/badlogic/gdx/utils/a;->b:I

    iget v1, p0, Lcom/badlogic/gdx/utils/g;->b:I

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/g;->a:Lcom/badlogic/gdx/utils/a;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/a;->a(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final b()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/g;->a:Lcom/badlogic/gdx/utils/a;

    iget v0, v0, Lcom/badlogic/gdx/utils/a;->b:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/g;->a()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/g;->a:Lcom/badlogic/gdx/utils/a;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/a;->a()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
