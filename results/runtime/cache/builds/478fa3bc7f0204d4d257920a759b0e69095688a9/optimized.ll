; ModuleID = '<stdin>'
source_filename = "/tmp/tmpcdzpknkk.cpp"
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
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %num = alloca i32, align 4
  %a = alloca [500 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num) #5
  call void @llvm.lifetime.start.p0(i64 2000, ptr nonnull %a) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2000) %a, i8 0, i64 2000, i1 false)
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %j.0 = phi i32 [ 1, %entry ], [ %j.1, %for.inc ]
  %i.0 = phi i32 [ 1, %entry ], [ %inc3, %for.inc ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not = icmp sgt i32 %i.0, %0
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %num)
  %1 = load i32, ptr %num, align 4, !tbaa !5
  %2 = and i32 %1, 1
  %cmp2.not = icmp eq i32 %2, 0
  br i1 %cmp2.not, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  %inc = add nsw i32 %j.0, 1
  %idxprom = sext i32 %j.0 to i64
  %arrayidx = getelementptr inbounds [500 x i32], ptr %a, i64 0, i64 %idxprom
  store i32 %1, ptr %arrayidx, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %j.1 = phi i32 [ %inc, %if.then ], [ %j.0, %for.body ]
  %inc3 = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %sub5 = add nsw i32 %j.0, -2
  %smax26 = call i32 @llvm.smax.i32(i32 %sub5, i32 0)
  %3 = add nuw nsw i32 %smax26, 1
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc32, %for.end
  %indvars.iv24 = phi i32 [ %indvars.iv.next25, %for.inc32 ], [ %sub5, %for.end ]
  %k.0 = phi i32 [ %inc33, %for.inc32 ], [ 1, %for.end ]
  %exitcond27 = icmp eq i32 %k.0, %3
  br i1 %exitcond27, label %for.cond35.preheader, label %for.cond8.preheader

for.cond35.preheader:                             ; preds = %for.cond4
  %sub = add nsw i32 %j.0, -1
  %4 = zext i32 %sub to i64
  %smax32 = call i32 @llvm.smax.i32(i32 %j.0, i32 1)
  %wide.trip.count33 = zext nneg i32 %smax32 to i64
  %arrayidx45 = getelementptr inbounds nuw [500 x i32], ptr %a, i64 0, i64 %4
  br label %for.cond35

for.cond8.preheader:                              ; preds = %for.cond4
  %smax = call i32 @llvm.smax.i32(i32 %indvars.iv24, i32 0)
  %5 = add nuw i32 %smax, 1
  %wide.trip.count = zext i32 %5 to i64
  br label %for.cond8

for.cond8:                                        ; preds = %for.cond8.backedge, %for.cond8.preheader
  %indvars.iv = phi i64 [ 1, %for.cond8.preheader ], [ %indvars.iv.next, %for.cond8.backedge ]
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %for.inc32, label %for.body11

for.body11:                                       ; preds = %for.cond8
  %arrayidx13 = getelementptr inbounds nuw [500 x i32], ptr %a, i64 0, i64 %indvars.iv
  %6 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx15 = getelementptr inbounds nuw [500 x i32], ptr %a, i64 0, i64 %indvars.iv.next
  %7 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  %cmp16 = icmp sgt i32 %6, %7
  br i1 %cmp16, label %if.then17, label %for.cond8.backedge

for.cond8.backedge:                               ; preds = %for.body11, %if.then17
  br label %for.cond8, !llvm.loop !12

if.then17:                                        ; preds = %for.body11
  store i32 %7, ptr %arrayidx13, align 4, !tbaa !5
  store i32 %6, ptr %arrayidx15, align 4, !tbaa !5
  br label %for.cond8.backedge

for.inc32:                                        ; preds = %for.cond8
  %inc33 = add nuw i32 %k.0, 1
  %indvars.iv.next25 = add i32 %indvars.iv24, -1
  br label %for.cond4, !llvm.loop !13

for.cond35:                                       ; preds = %for.cond35.preheader, %for.inc48
  %indvars.iv28 = phi i64 [ 1, %for.cond35.preheader ], [ %indvars.iv.next29, %for.inc48 ]
  %exitcond34.not = icmp eq i64 %indvars.iv28, %wide.trip.count33
  br i1 %exitcond34.not, label %for.end50, label %for.body37

for.body37:                                       ; preds = %for.cond35
  %cmp38.not = icmp eq i64 %indvars.iv28, %4
  br i1 %cmp38.not, label %if.else, label %if.then39

if.then39:                                        ; preds = %for.body37
  %arrayidx41 = getelementptr inbounds nuw [500 x i32], ptr %a, i64 0, i64 %indvars.iv28
  %8 = load i32, ptr %arrayidx41, align 4, !tbaa !5
  %call42 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %8)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %call42, ptr noundef nonnull @.str, i64 noundef 1)
  br label %for.inc48

if.else:                                          ; preds = %for.body37
  %9 = load i32, ptr %arrayidx45, align 4, !tbaa !5
  %call46 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %9)
  br label %for.inc48

for.inc48:                                        ; preds = %if.then39, %if.else
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1
  br label %for.cond35, !llvm.loop !14

for.end50:                                        ; preds = %for.cond35
  call void @llvm.lifetime.end.p0(i64 2000, ptr nonnull %a) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

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
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
