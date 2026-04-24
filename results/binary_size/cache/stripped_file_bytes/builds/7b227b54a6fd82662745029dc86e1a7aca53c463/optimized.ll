; ModuleID = '<stdin>'
source_filename = "/tmp/tmphc6f2by6.cpp"
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

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = zext i32 %0 to i64
  %2 = call ptr @llvm.stacksave.p0()
  %vla = alloca i32, i64 %1, align 16
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %4 = zext i32 %3 to i64
  %vla1 = alloca i32, i64 %4, align 16
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = phi i32 [ %.pre, %for.inc ], [ %3, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %6 = sext i32 %5 to i64
  %cmp = icmp slt i64 %indvars.iv, %6
  br i1 %cmp, label %for.inc, label %for.cond6.preheader

for.cond6.preheader:                              ; preds = %for.cond
  %smax32 = call i32 @llvm.smax.i32(i32 %5, i32 noundef 1)
  %wide.trip.count33 = zext nneg i32 %smax32 to i64
  br label %for.cond6

for.inc:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv
  %call3 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.cond6:                                        ; preds = %for.cond6.preheader, %for.inc28
  %indvars.iv28 = phi i64 [ 1, %for.cond6.preheader ], [ %indvars.iv.next29, %for.inc28 ]
  %s.0 = phi i32 [ 1, %for.cond6.preheader ], [ %s.1, %for.inc28 ]
  %exitcond34.not = icmp eq i64 %indvars.iv28, %wide.trip.count33
  br i1 %exitcond34.not, label %for.cond32.preheader, label %for.cond9.preheader

for.cond9.preheader:                              ; preds = %for.cond6
  %arrayidx13 = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv28
  %smax = call range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %s.0, i32 noundef 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond9

for.cond32.preheader:                             ; preds = %for.cond6
  %sub = add nsw i32 %s.0, -1
  %smax38 = call i32 @llvm.smax.i32(i32 %sub, i32 noundef 0)
  %wide.trip.count39 = zext nneg i32 %smax38 to i64
  br label %for.cond32

for.cond9:                                        ; preds = %for.cond9.preheader, %for.inc17
  %indvars.iv25 = phi i64 [ 0, %for.cond9.preheader ], [ %indvars.iv.next26, %for.inc17 ]
  %exitcond.not = icmp eq i64 %indvars.iv25, %wide.trip.count
  br i1 %exitcond.not, label %for.end19, label %for.body11

for.body11:                                       ; preds = %for.cond9
  %7 = load i32, ptr %arrayidx13, align 4, !tbaa !5, !invariant.load !12
  %arrayidx15 = getelementptr inbounds nuw i32, ptr %vla1, i64 %indvars.iv25
  %8 = load i32, ptr %arrayidx15, align 4, !tbaa !5, !invariant.load !12
  %cmp16 = icmp eq i32 %7, %8
  br i1 %cmp16, label %for.end19.split.loop.exit, label %for.inc17

for.inc17:                                        ; preds = %for.body11
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1
  br label %for.cond9, !llvm.loop !13

for.end19.split.loop.exit:                        ; preds = %for.body11
  %9 = trunc nuw nsw i64 %indvars.iv25 to i32
  br label %for.end19

for.end19:                                        ; preds = %for.cond9, %for.end19.split.loop.exit
  %j.0.lcssa = phi i32 [ %9, %for.end19.split.loop.exit ], [ %smax, %for.cond9 ]
  %cmp20 = icmp eq i32 %j.0.lcssa, %s.0
  br i1 %cmp20, label %if.then21, label %for.inc28

if.then21:                                        ; preds = %for.end19
  %10 = load i32, ptr %arrayidx13, align 4, !tbaa !5, !invariant.load !12
  %idxprom24 = sext i32 %s.0 to i64
  %arrayidx25 = getelementptr inbounds i32, ptr %vla1, i64 %idxprom24
  store i32 %10, ptr %arrayidx25, align 4, !tbaa !5
  %inc26 = add nsw i32 %s.0, 1
  br label %for.inc28

for.inc28:                                        ; preds = %for.end19, %if.then21
  %s.1 = phi i32 [ %inc26, %if.then21 ], [ %s.0, %for.end19 ]
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1
  br label %for.cond6, !llvm.loop !14

for.cond32:                                       ; preds = %for.cond32.preheader, %for.inc40
  %indvars.iv35 = phi i64 [ 0, %for.cond32.preheader ], [ %indvars.iv.next36, %for.inc40 ]
  %exitcond40.not = icmp eq i64 %indvars.iv35, %wide.trip.count39
  br i1 %exitcond40.not, label %for.end42, label %for.inc40

for.inc40:                                        ; preds = %for.cond32
  %arrayidx37 = getelementptr inbounds nuw i32, ptr %vla1, i64 %indvars.iv35
  %11 = load i32, ptr %arrayidx37, align 4, !tbaa !5, !invariant.load !12
  %call38 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %11)
  %call39 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %call38, i8 noundef signext 32)
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  br label %for.cond32, !llvm.loop !15

for.end42:                                        ; preds = %for.cond32
  %idxprom44 = sext i32 %sub to i64
  %arrayidx45 = getelementptr inbounds i32, ptr %vla1, i64 %idxprom44
  %12 = load i32, ptr %arrayidx45, align 4, !tbaa !5, !invariant.load !12
  %call46 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %12)
  call void @llvm.stackrestore.p0(ptr %2)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind willreturn }
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
