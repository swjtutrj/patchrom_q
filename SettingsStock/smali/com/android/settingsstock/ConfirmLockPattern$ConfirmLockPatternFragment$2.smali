.class Lcom/android/settingsstock/ConfirmLockPattern$ConfirmLockPatternFragment$2;
.super Ljava/lang/Object;
.source "ConfirmLockPattern.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternView$OnPatternListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/ConfirmLockPattern$ConfirmLockPatternFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/ConfirmLockPattern$ConfirmLockPatternFragment;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/ConfirmLockPattern$ConfirmLockPatternFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$0:Lcom/android/settingsstock/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPatternCellAdded(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onPatternCleared()V
    .locals 2

    iget-object v0, p0, Lcom/android/settingsstock/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$0:Lcom/android/settingsstock/ConfirmLockPattern$ConfirmLockPatternFragment;

    #getter for: Lcom/android/settingsstock/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v0}, Lcom/android/settingsstock/ConfirmLockPattern$ConfirmLockPatternFragment;->access$000(Lcom/android/settingsstock/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingsstock/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$0:Lcom/android/settingsstock/ConfirmLockPattern$ConfirmLockPatternFragment;

    #getter for: Lcom/android/settingsstock/ConfirmLockPattern$ConfirmLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/settingsstock/ConfirmLockPattern$ConfirmLockPatternFragment;->access$100(Lcom/android/settingsstock/ConfirmLockPattern$ConfirmLockPatternFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    iget-object v3, p0, Lcom/android/settingsstock/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$0:Lcom/android/settingsstock/ConfirmLockPattern$ConfirmLockPatternFragment;

    #getter for: Lcom/android/settingsstock/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v3}, Lcom/android/settingsstock/ConfirmLockPattern$ConfirmLockPatternFragment;->access$200(Lcom/android/settingsstock/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->checkPattern(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "password"

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/settingsstock/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$0:Lcom/android/settingsstock/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v3}, Lcom/android/settingsstock/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object v3, p0, Lcom/android/settingsstock/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$0:Lcom/android/settingsstock/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v3}, Lcom/android/settingsstock/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x4

    if-lt v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/settingsstock/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$0:Lcom/android/settingsstock/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v3}, Lcom/android/settingsstock/ConfirmLockPattern$ConfirmLockPatternFragment;->access$304(Lcom/android/settingsstock/ConfirmLockPattern$ConfirmLockPatternFragment;)I

    move-result v3

    const/4 v4, 0x5

    if-lt v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/settingsstock/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$0:Lcom/android/settingsstock/ConfirmLockPattern$ConfirmLockPatternFragment;

    #getter for: Lcom/android/settingsstock/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v3}, Lcom/android/settingsstock/ConfirmLockPattern$ConfirmLockPatternFragment;->access$200(Lcom/android/settingsstock/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline()J

    move-result-wide v0

    iget-object v3, p0, Lcom/android/settingsstock/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$0:Lcom/android/settingsstock/ConfirmLockPattern$ConfirmLockPatternFragment;

    #calls: Lcom/android/settingsstock/ConfirmLockPattern$ConfirmLockPatternFragment;->handleAttemptLockout(J)V
    invoke-static {v3, v0, v1}, Lcom/android/settingsstock/ConfirmLockPattern$ConfirmLockPatternFragment;->access$400(Lcom/android/settingsstock/ConfirmLockPattern$ConfirmLockPatternFragment;J)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/settingsstock/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$0:Lcom/android/settingsstock/ConfirmLockPattern$ConfirmLockPatternFragment;

    sget-object v4, Lcom/android/settingsstock/ConfirmLockPattern$Stage;->NeedToUnlockWrong:Lcom/android/settingsstock/ConfirmLockPattern$Stage;

    #calls: Lcom/android/settingsstock/ConfirmLockPattern$ConfirmLockPatternFragment;->updateStage(Lcom/android/settingsstock/ConfirmLockPattern$Stage;)V
    invoke-static {v3, v4}, Lcom/android/settingsstock/ConfirmLockPattern$ConfirmLockPatternFragment;->access$500(Lcom/android/settingsstock/ConfirmLockPattern$ConfirmLockPatternFragment;Lcom/android/settingsstock/ConfirmLockPattern$Stage;)V

    iget-object v3, p0, Lcom/android/settingsstock/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$0:Lcom/android/settingsstock/ConfirmLockPattern$ConfirmLockPatternFragment;

    #calls: Lcom/android/settingsstock/ConfirmLockPattern$ConfirmLockPatternFragment;->postClearPatternRunnable()V
    invoke-static {v3}, Lcom/android/settingsstock/ConfirmLockPattern$ConfirmLockPatternFragment;->access$600(Lcom/android/settingsstock/ConfirmLockPattern$ConfirmLockPatternFragment;)V

    goto :goto_0
.end method

.method public onPatternStart()V
    .locals 2

    iget-object v0, p0, Lcom/android/settingsstock/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$0:Lcom/android/settingsstock/ConfirmLockPattern$ConfirmLockPatternFragment;

    #getter for: Lcom/android/settingsstock/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v0}, Lcom/android/settingsstock/ConfirmLockPattern$ConfirmLockPatternFragment;->access$000(Lcom/android/settingsstock/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingsstock/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$0:Lcom/android/settingsstock/ConfirmLockPattern$ConfirmLockPatternFragment;

    #getter for: Lcom/android/settingsstock/ConfirmLockPattern$ConfirmLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/settingsstock/ConfirmLockPattern$ConfirmLockPatternFragment;->access$100(Lcom/android/settingsstock/ConfirmLockPattern$ConfirmLockPatternFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method
