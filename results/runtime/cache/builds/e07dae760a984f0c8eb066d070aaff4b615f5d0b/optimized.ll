; ModuleID = '<stdin>'
source_filename = "/tmp/tmplbadfpk4.cpp"
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
  %a = alloca [20000 x i32], align 16
  %b = alloca [20000 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #5
  call void @llvm.lifetime.start.p0(i64 80000, ptr %a) #5
  call void @llvm.lifetime.start.p0(i64 80000, ptr %b) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [20000 x i32], ptr %a, i64 0, i64 %idxprom
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %1 = load i32, ptr %a, align 16, !tbaa !5
  store i32 %1, ptr %b, align 16, !tbaa !5
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc26, %for.end
  %j.0 = phi i32 [ 1, %for.end ], [ %j.1, %for.inc26 ]
  %i.1 = phi i32 [ 1, %for.end ], [ %inc27, %for.inc26 ]
  %cmp5 = icmp slt i32 %i.1, %0
  br i1 %cmp5, label %for.body6, label %for.end28

for.body6:                                        ; preds = %for.cond4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc15, %for.body6
  %m.1 = phi i32 [ 0, %for.body6 ], [ %m.2, %for.inc15 ]
  %k.0 = phi i32 [ 0, %for.body6 ], [ %inc16, %for.inc15 ]
  %cmp8 = icmp slt i32 %k.0, %j.0
  br i1 %cmp8, label %for.body9, label %for.end17

for.body9:                                        ; preds = %for.cond7
  %idxprom10 = sext i32 %i.1 to i64
  %arrayidx11 = getelementptr inbounds [20000 x i32], ptr %a, i64 0, i64 %idxprom10
  %2 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %idxprom12 = sext i32 %k.0 to i64
  %arrayidx13 = getelementptr inbounds [20000 x i32], ptr %b, i64 0, i64 %idxprom12
  %3 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  %cmp14 = icmp eq i32 %2, %3
  br i1 %cmp14, label %if.then, label %if.end

if.then:                                          ; preds = %for.body9
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body9
  %m.2 = phi i32 [ 1, %if.then ], [ %m.1, %for.body9 ]
  br label %for.inc15

for.inc15:                                        ; preds = %if.end
  %inc16 = add nsw i32 %k.0, 1
  br label %for.cond7, !llvm.loop !12

for.end17:                                        ; preds = %for.cond7
  %cmp18 = icmp ne i32 %m.1, 1
  br i1 %cmp18, label %if.then19, label %if.end25

if.then19:                                        ; preds = %for.end17
  %idxprom20 = sext i32 %i.1 to i64
  %arrayidx21 = getelementptr inbounds [20000 x i32], ptr %a, i64 0, i64 %idxprom20
  %4 = load i32, ptr %arrayidx21, align 4, !tbaa !5
  %idxprom22 = sext i32 %j.0 to i64
  %arrayidx23 = getelementptr inbounds [20000 x i32], ptr %b, i64 0, i64 %idxprom22
  store i32 %4, ptr %arrayidx23, align 4, !tbaa !5
  %inc24 = add nsw i32 %j.0, 1
  br label %if.end25

if.end25:                                         ; preds = %if.then19, %for.end17
  %j.1 = phi i32 [ %inc24, %if.then19 ], [ %j.0, %for.end17 ]
  br label %for.inc26

for.inc26:                                        ; preds = %if.end25
  %inc27 = add nsw i32 %i.1, 1
  br label %for.cond4, !llvm.loop !13

for.end28:                                        ; preds = %for.cond4
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc36, %for.end28
  %i.2 = phi i32 [ 0, %for.end28 ], [ %inc37, %for.inc36 ]
  %sub = sub nsw i32 %j.0, 1
  %cmp30 = icmp slt i32 %i.2, %sub
  br i1 %cmp30, label %for.body31, label %for.end38

for.body31:                                       ; preds = %for.cond29
  %idxprom32 = sext i32 %i.2 to i64
  %arrayidx33 = getelementptr inbounds [20000 x i32], ptr %b, i64 0, i64 %idxprom32
  %5 = load i32, ptr %arrayidx33, align 4, !tbaa !5
  %call34 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %5)
  %call35 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %call34, i8 noundef signext 32)
  br label %for.inc36

for.inc36:                                        ; preds = %for.body31
  %inc37 = add nsw i32 %i.2, 1
  br label %for.cond29, !llvm.loop !14

for.end38:                                        ; preds = %for.cond29
  %idxprom40 = sext i32 %sub to i64
  %arrayidx41 = getelementptr inbounds [20000 x i32], ptr %b, i64 0, i64 %idxprom40
  %6 = load i32, ptr %arrayidx41, align 4, !tbaa !5
  %call42 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %6)
  %call43 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call42, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  call void @llvm.lifetime.end.p0(i64 80000, ptr %b) #5
  call void @llvm.lifetime.end.p0(i64 80000, ptr %a) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
