; ModuleID = '<stdin>'
source_filename = "/tmp/tmpyedg32zc.cpp"
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
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = zext i32 %0 to i64
  %2 = call ptr @llvm.stacksave.p0()
  %vla = alloca i32, i64 %1, align 16
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %4 = sext i32 %3 to i64
  %cmp = icmp slt i64 %indvars.iv, %4
  br i1 %cmp, label %for.body, label %for.cond3.preheader

for.cond3.preheader:                              ; preds = %for.cond
  %smax32 = call i32 @llvm.smax.i32(i32 %3, i32 0)
  br label %for.cond3

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond

for.cond3:                                        ; preds = %for.cond3.preheader, %for.end29
  %indvars.iv29.in = phi i32 [ %3, %for.cond3.preheader ], [ %indvars.iv29, %for.end29 ]
  %i2.0 = phi i32 [ 0, %for.cond3.preheader ], [ %inc.i4, %for.end29 ]
  %indvars.iv29 = add i32 %indvars.iv29.in, -1
  %exitcond33.not = icmp eq i32 %i2.0, %smax32
  br i1 %exitcond33.not, label %for.cond34.preheader, label %for.cond7.preheader

for.cond34.preheader:                             ; preds = %for.cond3
  %cmp35.peel = icmp sgt i32 %3, 0
  br i1 %cmp35.peel, label %for.cond34, label %for.end61

for.cond7.preheader:                              ; preds = %for.cond3
  %smax = call i32 @llvm.smax.i32(i32 %indvars.iv29, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond7

for.cond7:                                        ; preds = %for.cond7.preheader, %if.end
  %indvars.iv25 = phi i64 [ 0, %for.cond7.preheader ], [ %indvars.iv.next26, %if.end ]
  %exitcond.not = icmp eq i64 %indvars.iv25, %wide.trip.count
  br i1 %exitcond.not, label %for.end29, label %for.body11

for.body11:                                       ; preds = %for.cond7
  %arrayidx13 = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv25
  %5 = load i32, ptr %arrayidx13, align 4, !tbaa !5, !invariant.load !9
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1
  %arrayidx15 = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv.next26
  %6 = load i32, ptr %arrayidx15, align 4, !tbaa !5, !invariant.load !9
  %cmp16 = icmp sgt i32 %5, %6
  br i1 %cmp16, label %if.then, label %if.end

if.then:                                          ; preds = %for.body11
  store i32 %6, ptr %arrayidx13, align 4, !tbaa !5
  store i32 %5, ptr %arrayidx15, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body11
  br label %for.cond7

for.end29:                                        ; preds = %for.cond7
  %inc.i4 = add nuw i32 %i2.0, 1
  br label %for.cond3

for.cond34:                                       ; preds = %for.cond34.preheader, %if.end58
  %.pre38 = phi i32 [ %.pre, %if.end58 ], [ %3, %for.cond34.preheader ]
  %indvars.iv34 = phi i64 [ %indvars.iv.next35, %if.end58 ], [ 1, %for.cond34.preheader ]
  %7 = sext i32 %.pre38 to i64
  %cmp35 = icmp slt i64 %indvars.iv34, %7
  br i1 %cmp35, label %for.body37, label %for.end61

for.body37:                                       ; preds = %for.cond34
  %arrayidx39 = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv34
  %8 = load i32, ptr %arrayidx39, align 4, !tbaa !5, !invariant.load !9
  %9 = and i32 %8, -2147483647
  %cmp40 = icmp eq i32 %9, 1
  br i1 %cmp40, label %if.then52, label %if.end58

if.then52:                                        ; preds = %for.body37
  %call53 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 44)
  %call56 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %call53, i32 noundef %8)
  %.pre.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %if.end58

if.end58:                                         ; preds = %if.then52, %for.body37
  %.pre = phi i32 [ %.pre.pre, %if.then52 ], [ %.pre38, %for.body37 ]
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1
  br label %for.cond34, !llvm.loop !10

for.end61:                                        ; preds = %for.cond34, %for.cond34.preheader
  call void @llvm.stackrestore.p0(ptr %2)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind }

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
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.peeled.count", i32 1}
