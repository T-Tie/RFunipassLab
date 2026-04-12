; ModuleID = '<stdin>'
source_filename = "/tmp/tmp3dqaugn1.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %word = alloca [500 x [40 x i8]], align 16
  %para = alloca [50 x [82 x i8]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 dereferenceable(4) %i) #8
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #8
  call void @llvm.lifetime.start.p0(i64 noundef 20000, ptr noundef %word) #8
  call void @llvm.memset.p0.i64(ptr noundef writeonly align 16 %word, i8 noundef 0, i64 noundef 20000, i1 noundef false) #9
  call void @llvm.lifetime.start.p0(i64 noundef 4100, ptr noundef %para) #8
  call void @llvm.memset.p0.i64(ptr noundef writeonly align 16 %para, i8 noundef 0, i64 noundef 4100, i1 noundef false) #9
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %n)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 0, %0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %word)
  call fastcc void @outlined_ir_func_0(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %i) #10
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call7 = call ptr @strcat(ptr noundef %para, ptr noundef readonly captures(none) %word) #10
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond8

for.cond8:                                        ; preds = %if.end, %for.end
  %k.0 = phi i32 [ 0, %for.end ], [ %k.1, %if.end ]
  %cmp9 = icmp slt i32 1, %0
  br i1 %cmp9, label %for.body10, label %for.end42

for.body10:                                       ; preds = %for.cond8
  %idxprom11 = sext i32 %k.0 to i64
  %arrayidx12 = getelementptr inbounds [50 x [82 x i8]], ptr %para, i64 0, i64 %idxprom11
  %call14 = call i64 @strlen(ptr noundef %arrayidx12) #11
  %arrayidx16 = getelementptr inbounds [500 x [40 x i8]], ptr %word, i64 0, i64 1
  %call18 = call i64 @strlen(ptr noundef %arrayidx16) #11
  %add = add i64 %call14, %call18
  %add19 = add i64 %add, 1
  %cmp20 = icmp ule i64 %add19, 80
  br i1 %cmp20, label %if.then, label %if.else

if.then:                                          ; preds = %for.body10
  %call24 = call ptr @strcat(ptr noundef %arrayidx12, ptr noundef @.str.2) #10
  br label %if.end

if.else:                                          ; preds = %for.body10
  %inc32 = add nsw i32 %k.0, 1
  %idxprom33 = sext i32 %inc32 to i64
  %arrayidx34 = getelementptr inbounds [50 x [82 x i8]], ptr %para, i64 0, i64 %idxprom33
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %arrayidx34.sink = phi ptr [ %arrayidx34, %if.else ], [ %arrayidx12, %if.then ]
  %k.1 = phi i32 [ %k.0, %if.then ], [ %inc32, %if.else ]
  %1 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom36 = sext i32 %1 to i64
  %arrayidx37 = getelementptr inbounds [500 x [40 x i8]], ptr %word, i64 0, i64 %idxprom36
  %call39 = call ptr @strcat(ptr noundef %arrayidx34.sink, ptr noundef %arrayidx37) #10
  call fastcc void @outlined_ir_func_0(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %i) #10
  br label %for.cond8

for.end42:                                        ; preds = %for.cond8
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond43

for.cond43:                                       ; preds = %for.body45, %for.end42
  %cmp44 = icmp sle i32 0, %k.0
  br i1 %cmp44, label %for.body45, label %for.end52

for.body45:                                       ; preds = %for.cond43
  %call49 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, ptr noundef %para) #10
  call fastcc void @outlined_ir_func_0(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %i) #10
  br label %for.cond43

for.end52:                                        ; preds = %for.cond43
  call void @llvm.lifetime.end.p0(i64 noundef 4100, ptr noundef %para) #10
  call void @llvm.lifetime.end.p0(i64 noundef 20000, ptr noundef %word) #10
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #10
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull align 4 dereferenceable(4) %i) #10
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias noundef readonly captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: minsize mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @outlined_ir_func_0(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %0) unnamed_addr #7 {
for.cond.exitStub:
  %1 = load i32, ptr %0, align 4, !tbaa !5
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr %0, align 4, !tbaa !5
  ret void
}

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { minsize mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { nofree }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
