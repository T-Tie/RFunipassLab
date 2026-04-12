; ModuleID = '<stdin>'
source_filename = "/tmp/tmpl9r83vc4.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }

@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %str = alloca [10000 x i8], align 16
  %b = alloca [100000 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 10000, ptr noundef nonnull align 16 %str) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull writeonly align 16 dereferenceable(10000) %str, i8 noundef 0, i64 noundef 10000, i1 noundef false) #7
  call void @llvm.lifetime.start.p0(i64 noundef 400000, ptr noundef nonnull align 16 %b) #6
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.body ], [ 0, %entry ]
  %call = tail call i32 @getchar() #6
  %sext.mask = and i32 %call, 255
  %cmp.not = icmp eq i32 %sext.mask, 10
  br i1 %cmp.not, label %for.cond.preheader, label %while.body

for.cond.preheader:                               ; preds = %while.cond
  %wide.trip.count = and i64 %indvars.iv, 4294967295
  br label %for.cond

while.body:                                       ; preds = %while.cond
  %conv = trunc i32 %call to i8
  %arrayidx = getelementptr inbounds nuw [10000 x i8], ptr %str, i64 0, i64 %indvars.iv
  store i8 %conv, ptr %arrayidx, align 1, !tbaa !5
  %indvars.iv.next = add nuw i64 %indvars.iv, 1
  br label %while.cond, !llvm.loop !8

for.cond:                                         ; preds = %for.cond.preheader, %if.end
  %indvars.iv11 = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next12, %if.end ]
  %j.0 = phi i32 [ 0, %for.cond.preheader ], [ %j.1, %if.end ]
  %exitcond.not = icmp eq i64 %indvars.iv11, %wide.trip.count
  br i1 %exitcond.not, label %for.cond15.preheader, label %for.body

for.cond15.preheader:                             ; preds = %for.cond
  %smax = tail call i32 @llvm.smax.i32(i32 %j.0, i32 0)
  %wide.trip.count21 = zext nneg i32 %smax to i64
  br label %for.cond15

for.body:                                         ; preds = %for.cond
  %arrayidx4 = getelementptr inbounds nuw [10000 x i8], ptr %str, i64 0, i64 %indvars.iv11
  %0 = load i8, ptr %arrayidx4, align 1, !tbaa !5
  %cmp6 = icmp eq i8 %0, 32
  br i1 %cmp6, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %1 = add nsw i64 %indvars.iv11, -1
  %arrayidx8 = getelementptr inbounds [10000 x i8], ptr %str, i64 0, i64 %1
  %2 = load i8, ptr %arrayidx8, align 1, !tbaa !5
  %cmp10 = icmp eq i8 %2, 32
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %idxprom11 = sext i32 %j.0 to i64
  %arrayidx12 = getelementptr inbounds [100000 x i32], ptr %b, i64 0, i64 %idxprom11
  %3 = trunc nuw nsw i64 %indvars.iv11 to i32
  store i32 %3, ptr %arrayidx12, align 4, !tbaa !11
  %inc13 = add nsw i32 %j.0, 1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  %j.1 = phi i32 [ %inc13, %if.then ], [ %j.0, %land.lhs.true ], [ %j.0, %for.body ]
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1
  br label %for.cond

for.cond15:                                       ; preds = %for.cond15.preheader, %if.end34
  %indvars.iv23 = phi i64 [ 0, %for.cond15.preheader ], [ %indvars.iv.next24, %if.end34 ]
  %exitcond28.not = icmp eq i64 %indvars.iv23, %wide.trip.count
  br i1 %exitcond28.not, label %for.end37, label %for.cond18

for.cond18:                                       ; preds = %for.cond15, %for.body20
  %indvars.iv17 = phi i64 [ %indvars.iv.next18, %for.body20 ], [ 0, %for.cond15 ]
  %sum.0 = phi i32 [ %add, %for.body20 ], [ 0, %for.cond15 ]
  %exitcond22.not = icmp eq i64 %indvars.iv17, %wide.trip.count21
  br i1 %exitcond22.not, label %for.end28, label %for.body20

for.body20:                                       ; preds = %for.cond18
  %arrayidx22 = getelementptr inbounds nuw [100000 x i32], ptr %b, i64 0, i64 %indvars.iv17
  %4 = load i32, ptr %arrayidx22, align 4, !tbaa !11
  %5 = zext i32 %4 to i64
  %cmp23.not = icmp eq i64 %indvars.iv23, %5
  %spec.select = zext i1 %cmp23.not to i32
  %add = add nuw nsw i32 %sum.0, %spec.select
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1
  br label %for.cond18

for.end28:                                        ; preds = %for.cond18
  %cmp29 = icmp eq i32 %sum.0, 0
  br i1 %cmp29, label %if.then30, label %if.end34

if.then30:                                        ; preds = %for.end28
  %arrayidx32 = getelementptr inbounds nuw [10000 x i8], ptr %str, i64 0, i64 %indvars.iv23
  %6 = load i8, ptr %arrayidx32, align 1, !tbaa !5, !invariant.load !13
  %call33 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %6)
  br label %if.end34

if.end34:                                         ; preds = %if.then30, %for.end28
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  br label %for.cond15

for.end37:                                        ; preds = %for.cond15
  call void @llvm.lifetime.end.p0(i64 noundef 400000, ptr noundef nonnull %b) #6
  call void @llvm.lifetime.end.p0(i64 noundef 10000, ptr noundef nonnull %str) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: inlinehint mustprogress nofree nounwind uwtable
declare noundef i32 @getchar() local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { inlinehint mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind }
attributes #7 = { nofree }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !6, i64 0}
!13 = !{}
