; ModuleID = '<stdin>'
source_filename = "/tmp/tmp1ocsqoz9.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_Z4zeroPA100_ii(ptr nofree noundef captures(none) %a, i32 noundef %n) local_unnamed_addr #0 {
entry:
  %cmp = icmp sgt i32 %n, 0
  br i1 %cmp, label %for.cond.preheader, label %for.end98

for.cond.preheader:                               ; preds = %entry
  %wide.trip.count = zext nneg i32 %n to i64
  br label %for.cond

for.cond:                                         ; preds = %for.cond.preheader, %if.end39
  %indvars.iv20 = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next21, %if.end39 ]
  %arrayidx = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv20
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5, !invariant.load !9
  %cmp23.not = icmp eq i32 %0, 0
  br i1 %cmp23.not, label %if.end39, label %for.cond26

for.cond26:                                       ; preds = %for.cond, %for.inc36
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc36 ], [ 0, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %if.end39, label %for.inc36

for.inc36:                                        ; preds = %for.cond26
  %arrayidx35 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv20, i64 %indvars.iv
  %1 = load i32, ptr %arrayidx35, align 4, !tbaa !5, !invariant.load !9
  %sub = sub nsw i32 %1, %0
  store i32 %sub, ptr %arrayidx35, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond26, !llvm.loop !10

if.end39:                                         ; preds = %for.cond26, %for.cond
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1
  br label %for.cond

for.end98:                                        ; preds = %entry
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_Z10subductionPA100_ii(ptr nofree noundef captures(none) %a, i32 noundef %n) local_unnamed_addr #0 {
entry:
  %cmp = icmp sgt i32 %n, 2
  br i1 %cmp, label %for.cond, label %for.end38

for.cond:                                         ; preds = %entry, %for.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 1, %entry ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx1 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv.next
  %0 = load i32, ptr %arrayidx1, align 4, !tbaa !5, !invariant.load !9
  %arrayidx4 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv
  store i32 %0, ptr %arrayidx4, align 4, !tbaa !5
  %arrayidx7 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv.next
  %1 = load i32, ptr %arrayidx7, align 4, !tbaa !5, !invariant.load !9
  %arrayidx10 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv
  store i32 %1, ptr %arrayidx10, align 4, !tbaa !5
  br label %for.cond

for.end38:                                        ; preds = %entry
  ret void
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %n = alloca i32, align 4
  %a = alloca [100 x [100 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #6
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef nonnull align 16 captures(none) dereferenceable(40000) %a) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %a, i64 404
  br label %for.cond

for.cond:                                         ; preds = %while.end, %entry
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %for.cond1, label %for.end23

for.cond1:                                        ; preds = %for.cond, %for.inc12
  %1 = phi i32 [ %3, %for.inc12 ], [ %0, %for.cond ]
  %indvars.iv4 = phi i64 [ %indvars.iv.next5, %for.inc12 ], [ 0, %for.cond ]
  %2 = sext i32 %1 to i64
  %cmp2 = icmp slt i64 %indvars.iv4, %2
  br i1 %cmp2, label %for.cond5, label %while.cond

for.cond5:                                        ; preds = %for.cond1, %for.inc
  %3 = phi i32 [ %.pre, %for.inc ], [ %1, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond1 ]
  %4 = sext i32 %3 to i64
  %cmp6 = icmp slt i64 %indvars.iv, %4
  br i1 %cmp6, label %for.inc, label %for.inc12

for.inc:                                          ; preds = %for.cond5
  %arrayidx10 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv4, i64 %indvars.iv
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx10)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond5, !llvm.loop !13

for.inc12:                                        ; preds = %for.cond5
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4, 1
  br label %for.cond1, !llvm.loop !14

while.cond:                                       ; preds = %for.cond1, %while.body
  %s.0 = phi i32 [ %add, %while.body ], [ 0, %for.cond1 ]
  %m.0 = phi i32 [ %dec, %while.body ], [ %0, %for.cond1 ]
  %cmp15.not = icmp eq i32 %m.0, 1
  br i1 %cmp15.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  call void @_Z4zeroPA100_ii(ptr nofree noundef nonnull align 16 captures(none) dereferenceable(40000) %a, i32 noundef %m.0) #7
  %5 = load i32, ptr %arrayidx17, align 4, !tbaa !5
  %add = add nsw i32 %5, %s.0
  %dec = add nsw i32 %m.0, -1
  call void @_Z10subductionPA100_ii(ptr nofree noundef nonnull align 16 captures(none) dereferenceable(40000) %a, i32 noundef %m.0) #7
  br label %while.cond, !llvm.loop !15

while.end:                                        ; preds = %while.cond
  %call19 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %s.0)
  %call20 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call19, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %for.cond

for.end23:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef nonnull align 16 captures(none) dereferenceable(40000) %a) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #7
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }

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
!9 = !{}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
!14 = distinct !{!14, !11, !12}
!15 = distinct !{!15, !11, !12}
