; ModuleID = '<stdin>'
source_filename = "/tmp/tmpp24jkee8.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

$_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_ = comdat any

$_ZNSt8ios_base5widthEl = comdat any

$_ZNKSt8ios_base5widthEv = comdat any

$_ZNSt11char_traitsIcE11eq_int_typeERKiS2_ = comdat any

$_ZNSt11char_traitsIcE3eofEv = comdat any

@freq = dso_local local_unnamed_addr global [27 x [27 x [27 x [27 x i32]]]] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [3 x i8] c"NO\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %str = alloca [505 x i8], align 16
  %fre = alloca [27 x [27 x i32]], align 16
  %fre107 = alloca [27 x [27 x [27 x i32]]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #9
  call void @llvm.lifetime.start.p0(i64 noundef 505, ptr noundef nonnull align 16 captures(none) dereferenceable(505) %str) #9
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_(ptr noundef nonnull align 8 dereferenceable(16) %call, ptr noundef nonnull align 16 dereferenceable(505) %str)
  %call3 = call i64 @strlen(ptr noundef %str) #10
  %conv = trunc i64 %call3 to i32
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %if.then, label %if.else104

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 noundef 2916, ptr noundef %fre) #11
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %if.then
  %i.0 = phi i32 [ 1, %if.then ], [ %inc11, %for.inc10 ]
  %cmp4 = icmp sle i32 %i.0, 26
  br i1 %cmp4, label %for.body, label %for.end12

for.body:                                         ; preds = %for.cond
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 1, %for.body ], [ %inc, %for.inc ]
  %cmp6 = icmp sle i32 %j.0, 26
  br i1 %cmp6, label %for.inc, label %for.inc10

for.inc:                                          ; preds = %for.cond5
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [27 x [27 x i32]], ptr %fre, i64 0, i64 %idxprom
  %idxprom8 = sext i32 %j.0 to i64
  %arrayidx9 = getelementptr inbounds [27 x i32], ptr %arrayidx, i64 0, i64 %idxprom8
  store i32 0, ptr %arrayidx9, align 4, !tbaa !5
  %inc = add nsw i32 %j.0, 1
  br label %for.cond5, !llvm.loop !9

for.inc10:                                        ; preds = %for.cond5
  %inc11 = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !12

for.end12:                                        ; preds = %for.cond
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc29, %for.end12
  %i.1 = phi i32 [ 0, %for.end12 ], [ %add, %for.inc29 ]
  %sub = sub nsw i32 %conv, 2
  %cmp14 = icmp sle i32 %i.1, %sub
  br i1 %cmp14, label %for.inc29, label %for.end31

for.inc29:                                        ; preds = %for.cond13
  %idxprom16 = sext i32 %i.1 to i64
  %arrayidx17 = getelementptr inbounds [505 x i8], ptr %str, i64 0, i64 %idxprom16
  %1 = load i8, ptr %arrayidx17, align 1, !tbaa !13
  %conv18 = sext i8 %1 to i32
  %sub19 = sub nsw i32 %conv18, 96
  %idxprom20 = sext i32 %sub19 to i64
  %arrayidx21 = getelementptr inbounds [27 x [27 x i32]], ptr %fre, i64 0, i64 %idxprom20
  %add = add nsw i32 %i.1, 1
  %idxprom22 = sext i32 %add to i64
  %arrayidx23 = getelementptr inbounds [505 x i8], ptr %str, i64 0, i64 %idxprom22
  %2 = load i8, ptr %arrayidx23, align 1, !tbaa !13
  %conv24 = sext i8 %2 to i32
  %sub25 = sub nsw i32 %conv24, 96
  %idxprom26 = sext i32 %sub25 to i64
  %arrayidx27 = getelementptr inbounds [27 x i32], ptr %arrayidx21, i64 0, i64 %idxprom26
  %3 = load i32, ptr %arrayidx27, align 4, !tbaa !5, !invariant.load !14
  %inc28 = add nsw i32 %3, 1
  store i32 %inc28, ptr %arrayidx27, align 4, !tbaa !5
  br label %for.cond13, !llvm.loop !15

for.end31:                                        ; preds = %for.cond13
  br label %for.cond32

for.cond32:                                       ; preds = %for.inc51, %for.end31
  %i.2 = phi i32 [ 1, %for.end31 ], [ %inc52, %for.inc51 ]
  %max.0 = phi i32 [ 0, %for.end31 ], [ %max.1, %for.inc51 ]
  %cmp33 = icmp sle i32 %i.2, 26
  br i1 %cmp33, label %for.body34, label %for.end53

for.body34:                                       ; preds = %for.cond32
  br label %for.cond35

for.cond35:                                       ; preds = %for.inc48, %for.body34
  %j.1 = phi i32 [ 1, %for.body34 ], [ %inc49, %for.inc48 ]
  %max.1 = phi i32 [ %max.0, %for.body34 ], [ %max.2, %for.inc48 ]
  %cmp36 = icmp sle i32 %j.1, 26
  br i1 %cmp36, label %for.body37, label %for.inc51

for.body37:                                       ; preds = %for.cond35
  %idxprom38 = sext i32 %i.2 to i64
  %arrayidx39 = getelementptr inbounds [27 x [27 x i32]], ptr %fre, i64 0, i64 %idxprom38
  %idxprom40 = sext i32 %j.1 to i64
  %arrayidx41 = getelementptr inbounds [27 x i32], ptr %arrayidx39, i64 0, i64 %idxprom40
  %4 = load i32, ptr %arrayidx41, align 4, !tbaa !5
  %cmp42 = icmp sge i32 %4, %max.1
  br i1 %cmp42, label %if.then43, label %for.inc48

if.then43:                                        ; preds = %for.body37
  br label %for.inc48

for.inc48:                                        ; preds = %for.body37, %if.then43
  %max.2 = phi i32 [ %4, %if.then43 ], [ %max.1, %for.body37 ]
  %inc49 = add nsw i32 %j.1, 1
  br label %for.cond35, !llvm.loop !16

for.inc51:                                        ; preds = %for.cond35
  %inc52 = add nsw i32 %i.2, 1
  br label %for.cond32, !llvm.loop !17

for.end53:                                        ; preds = %for.cond32
  %cmp54 = icmp eq i32 %max.0, 1
  br i1 %cmp54, label %if.then55, label %if.else

if.then55:                                        ; preds = %for.end53
  %call56 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str)
  br label %if.end59

if.else:                                          ; preds = %for.end53
  %call57 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %max.0)
  %call58 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call57, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %if.end59

if.end59:                                         ; preds = %if.else, %if.then55
  %max.3 = phi i32 [ -1, %if.then55 ], [ %max.0, %if.else ]
  br label %for.cond60

for.cond60:                                       ; preds = %for.inc101, %if.end59
  %i.3 = phi i32 [ 0, %if.end59 ], [ %add70, %for.inc101 ]
  %cmp62 = icmp sle i32 %i.3, %sub
  br i1 %cmp62, label %for.body63, label %for.end103

for.body63:                                       ; preds = %for.cond60
  %idxprom64 = sext i32 %i.3 to i64
  %arrayidx65 = getelementptr inbounds [505 x i8], ptr %str, i64 0, i64 %idxprom64
  %5 = load i8, ptr %arrayidx65, align 1, !tbaa !13
  %conv66 = sext i8 %5 to i32
  %sub67 = sub nsw i32 %conv66, 96
  %idxprom68 = sext i32 %sub67 to i64
  %arrayidx69 = getelementptr inbounds [27 x [27 x i32]], ptr %fre, i64 0, i64 %idxprom68
  %add70 = add nsw i32 %i.3, 1
  %idxprom71 = sext i32 %add70 to i64
  %arrayidx72 = getelementptr inbounds [505 x i8], ptr %str, i64 0, i64 %idxprom71
  %6 = load i8, ptr %arrayidx72, align 1, !tbaa !13
  %conv73 = sext i8 %6 to i32
  %sub74 = sub nsw i32 %conv73, 96
  %idxprom75 = sext i32 %sub74 to i64
  %arrayidx76 = getelementptr inbounds [27 x i32], ptr %arrayidx69, i64 0, i64 %idxprom75
  %7 = load i32, ptr %arrayidx76, align 4, !tbaa !5, !invariant.load !14
  %cmp77 = icmp eq i32 %7, %max.3
  br i1 %cmp77, label %if.then78, label %for.inc101

if.then78:                                        ; preds = %for.body63
  %call81 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %5)
  %8 = load i8, ptr %arrayidx72, align 1, !tbaa !13
  %call85 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %call81, i8 noundef signext %8)
  %call86 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call85, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %9 = load i8, ptr %arrayidx65, align 1, !tbaa !13
  %conv89 = sext i8 %9 to i32
  %sub90 = sub nsw i32 %conv89, 96
  %idxprom91 = sext i32 %sub90 to i64
  %arrayidx92 = getelementptr inbounds [27 x [27 x i32]], ptr %fre, i64 0, i64 %idxprom91
  %10 = load i8, ptr %arrayidx72, align 1, !tbaa !13
  %conv96 = sext i8 %10 to i32
  %sub97 = sub nsw i32 %conv96, 96
  %idxprom98 = sext i32 %sub97 to i64
  %arrayidx99 = getelementptr inbounds [27 x i32], ptr %arrayidx92, i64 0, i64 %idxprom98
  store i32 0, ptr %arrayidx99, align 4, !tbaa !5
  br label %for.inc101

for.inc101:                                       ; preds = %for.body63, %if.then78
  br label %for.cond60, !llvm.loop !18

for.end103:                                       ; preds = %for.cond60
  call void @llvm.lifetime.end.p0(i64 noundef 2916, ptr noundef %fre) #11
  br label %if.end461

if.else104:                                       ; preds = %entry
  %cmp105 = icmp eq i32 %0, 3
  br i1 %cmp105, label %if.then106, label %if.else262

if.then106:                                       ; preds = %if.else104
  call void @llvm.lifetime.start.p0(i64 noundef 78732, ptr noundef %fre107) #11
  br label %for.cond108

for.cond108:                                      ; preds = %for.inc129, %if.then106
  %i.4 = phi i32 [ 1, %if.then106 ], [ %inc130, %for.inc129 ]
  %cmp109 = icmp sle i32 %i.4, 26
  br i1 %cmp109, label %for.body110, label %for.end131

for.body110:                                      ; preds = %for.cond108
  br label %for.cond111

for.cond111:                                      ; preds = %for.inc126, %for.body110
  %j.2 = phi i32 [ 1, %for.body110 ], [ %inc127, %for.inc126 ]
  %cmp112 = icmp sle i32 %j.2, 26
  br i1 %cmp112, label %for.body113, label %for.inc129

for.body113:                                      ; preds = %for.cond111
  br label %for.cond114

for.cond114:                                      ; preds = %for.inc123, %for.body113
  %k.0 = phi i32 [ 1, %for.body113 ], [ %inc124, %for.inc123 ]
  %cmp115 = icmp sle i32 %k.0, 26
  br i1 %cmp115, label %for.inc123, label %for.inc126

for.inc123:                                       ; preds = %for.cond114
  %idxprom117 = sext i32 %i.4 to i64
  %arrayidx118 = getelementptr inbounds [27 x [27 x [27 x i32]]], ptr %fre107, i64 0, i64 %idxprom117
  %idxprom119 = sext i32 %j.2 to i64
  %arrayidx120 = getelementptr inbounds [27 x [27 x i32]], ptr %arrayidx118, i64 0, i64 %idxprom119
  %idxprom121 = sext i32 %k.0 to i64
  %arrayidx122 = getelementptr inbounds [27 x i32], ptr %arrayidx120, i64 0, i64 %idxprom121
  store i32 0, ptr %arrayidx122, align 4, !tbaa !5
  %inc124 = add nsw i32 %k.0, 1
  br label %for.cond114, !llvm.loop !19

for.inc126:                                       ; preds = %for.cond114
  %inc127 = add nsw i32 %j.2, 1
  br label %for.cond111, !llvm.loop !20

for.inc129:                                       ; preds = %for.cond111
  %inc130 = add nsw i32 %i.4, 1
  br label %for.cond108, !llvm.loop !21

for.end131:                                       ; preds = %for.cond108
  br label %for.cond132

for.cond132:                                      ; preds = %for.inc157, %for.end131
  %i.5 = phi i32 [ 0, %for.end131 ], [ %add142, %for.inc157 ]
  %sub133 = sub nsw i32 %conv, 3
  %cmp134 = icmp sle i32 %i.5, %sub133
  br i1 %cmp134, label %for.inc157, label %for.end159

for.inc157:                                       ; preds = %for.cond132
  %idxprom136 = sext i32 %i.5 to i64
  %arrayidx137 = getelementptr inbounds [505 x i8], ptr %str, i64 0, i64 %idxprom136
  %11 = load i8, ptr %arrayidx137, align 1, !tbaa !13
  %conv138 = sext i8 %11 to i32
  %sub139 = sub nsw i32 %conv138, 96
  %idxprom140 = sext i32 %sub139 to i64
  %arrayidx141 = getelementptr inbounds [27 x [27 x [27 x i32]]], ptr %fre107, i64 0, i64 %idxprom140
  %add142 = add nsw i32 %i.5, 1
  %idxprom143 = sext i32 %add142 to i64
  %arrayidx144 = getelementptr inbounds [505 x i8], ptr %str, i64 0, i64 %idxprom143
  %12 = load i8, ptr %arrayidx144, align 1, !tbaa !13
  %conv145 = sext i8 %12 to i32
  %sub146 = sub nsw i32 %conv145, 96
  %idxprom147 = sext i32 %sub146 to i64
  %arrayidx148 = getelementptr inbounds [27 x [27 x i32]], ptr %arrayidx141, i64 0, i64 %idxprom147
  %add149 = add nsw i32 %i.5, 2
  %idxprom150 = sext i32 %add149 to i64
  %arrayidx151 = getelementptr inbounds [505 x i8], ptr %str, i64 0, i64 %idxprom150
  %13 = load i8, ptr %arrayidx151, align 1, !tbaa !13
  %conv152 = sext i8 %13 to i32
  %sub153 = sub nsw i32 %conv152, 96
  %idxprom154 = sext i32 %sub153 to i64
  %arrayidx155 = getelementptr inbounds [27 x i32], ptr %arrayidx148, i64 0, i64 %idxprom154
  %14 = load i32, ptr %arrayidx155, align 4, !tbaa !5, !invariant.load !14
  %inc156 = add nsw i32 %14, 1
  store i32 %inc156, ptr %arrayidx155, align 4, !tbaa !5
  br label %for.cond132, !llvm.loop !22

for.end159:                                       ; preds = %for.cond132
  br label %for.cond160

for.cond160:                                      ; preds = %for.inc190, %for.end159
  %i.6 = phi i32 [ 1, %for.end159 ], [ %inc191, %for.inc190 ]
  %max.4 = phi i32 [ 0, %for.end159 ], [ %max.5, %for.inc190 ]
  %cmp161 = icmp sle i32 %i.6, 26
  br i1 %cmp161, label %for.body162, label %for.end192

for.body162:                                      ; preds = %for.cond160
  br label %for.cond163

for.cond163:                                      ; preds = %for.inc187, %for.body162
  %j.3 = phi i32 [ 1, %for.body162 ], [ %inc188, %for.inc187 ]
  %max.5 = phi i32 [ %max.4, %for.body162 ], [ %max.6, %for.inc187 ]
  %cmp164 = icmp sle i32 %j.3, 26
  br i1 %cmp164, label %for.body165, label %for.inc190

for.body165:                                      ; preds = %for.cond163
  br label %for.cond166

for.cond166:                                      ; preds = %for.inc184, %for.body165
  %k.1 = phi i32 [ 1, %for.body165 ], [ %inc185, %for.inc184 ]
  %max.6 = phi i32 [ %max.5, %for.body165 ], [ %max.7, %for.inc184 ]
  %cmp167 = icmp sle i32 %k.1, 26
  br i1 %cmp167, label %for.body168, label %for.inc187

for.body168:                                      ; preds = %for.cond166
  %idxprom169 = sext i32 %i.6 to i64
  %arrayidx170 = getelementptr inbounds [27 x [27 x [27 x i32]]], ptr %fre107, i64 0, i64 %idxprom169
  %idxprom171 = sext i32 %j.3 to i64
  %arrayidx172 = getelementptr inbounds [27 x [27 x i32]], ptr %arrayidx170, i64 0, i64 %idxprom171
  %idxprom173 = sext i32 %k.1 to i64
  %arrayidx174 = getelementptr inbounds [27 x i32], ptr %arrayidx172, i64 0, i64 %idxprom173
  %15 = load i32, ptr %arrayidx174, align 4, !tbaa !5
  %cmp175 = icmp sge i32 %15, %max.6
  br i1 %cmp175, label %if.then176, label %for.inc184

if.then176:                                       ; preds = %for.body168
  br label %for.inc184

for.inc184:                                       ; preds = %for.body168, %if.then176
  %max.7 = phi i32 [ %15, %if.then176 ], [ %max.6, %for.body168 ]
  %inc185 = add nsw i32 %k.1, 1
  br label %for.cond166, !llvm.loop !23

for.inc187:                                       ; preds = %for.cond166
  %inc188 = add nsw i32 %j.3, 1
  br label %for.cond163, !llvm.loop !24

for.inc190:                                       ; preds = %for.cond163
  %inc191 = add nsw i32 %i.6, 1
  br label %for.cond160, !llvm.loop !25

for.end192:                                       ; preds = %for.cond160
  %cmp193 = icmp eq i32 %max.4, 1
  br i1 %cmp193, label %if.then194, label %if.else196

if.then194:                                       ; preds = %for.end192
  %call195 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str)
  br label %if.end199

if.else196:                                       ; preds = %for.end192
  %call197 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %max.4)
  %call198 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call197, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %if.end199

if.end199:                                        ; preds = %if.else196, %if.then194
  %max.8 = phi i32 [ -1, %if.then194 ], [ %max.4, %if.else196 ]
  br label %for.cond200

for.cond200:                                      ; preds = %for.inc259, %if.end199
  %i.7 = phi i32 [ 0, %if.end199 ], [ %add210, %for.inc259 ]
  %sub201 = sub nsw i32 %conv, 2
  %cmp202 = icmp sle i32 %i.7, %sub201
  br i1 %cmp202, label %for.body203, label %for.end261

for.body203:                                      ; preds = %for.cond200
  %idxprom204 = sext i32 %i.7 to i64
  %arrayidx205 = getelementptr inbounds [505 x i8], ptr %str, i64 0, i64 %idxprom204
  %16 = load i8, ptr %arrayidx205, align 1, !tbaa !13
  %conv206 = sext i8 %16 to i32
  %sub207 = sub nsw i32 %conv206, 96
  %idxprom208 = sext i32 %sub207 to i64
  %arrayidx209 = getelementptr inbounds [27 x [27 x [27 x i32]]], ptr %fre107, i64 0, i64 %idxprom208
  %add210 = add nsw i32 %i.7, 1
  %idxprom211 = sext i32 %add210 to i64
  %arrayidx212 = getelementptr inbounds [505 x i8], ptr %str, i64 0, i64 %idxprom211
  %17 = load i8, ptr %arrayidx212, align 1, !tbaa !13
  %conv213 = sext i8 %17 to i32
  %sub214 = sub nsw i32 %conv213, 96
  %idxprom215 = sext i32 %sub214 to i64
  %arrayidx216 = getelementptr inbounds [27 x [27 x i32]], ptr %arrayidx209, i64 0, i64 %idxprom215
  %add217 = add nsw i32 %i.7, 2
  %idxprom218 = sext i32 %add217 to i64
  %arrayidx219 = getelementptr inbounds [505 x i8], ptr %str, i64 0, i64 %idxprom218
  %18 = load i8, ptr %arrayidx219, align 1, !tbaa !13
  %conv220 = sext i8 %18 to i32
  %sub221 = sub nsw i32 %conv220, 96
  %idxprom222 = sext i32 %sub221 to i64
  %arrayidx223 = getelementptr inbounds [27 x i32], ptr %arrayidx216, i64 0, i64 %idxprom222
  %19 = load i32, ptr %arrayidx223, align 4, !tbaa !5, !invariant.load !14
  %cmp224 = icmp eq i32 %19, %max.8
  br i1 %cmp224, label %if.then225, label %for.inc259

if.then225:                                       ; preds = %for.body203
  %call228 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %16)
  %20 = load i8, ptr %arrayidx212, align 1, !tbaa !13
  %call232 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %call228, i8 noundef signext %20)
  %21 = load i8, ptr %arrayidx219, align 1, !tbaa !13
  %call236 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %call232, i8 noundef signext %21)
  %call237 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call236, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %22 = load i8, ptr %arrayidx205, align 1, !tbaa !13
  %conv240 = sext i8 %22 to i32
  %sub241 = sub nsw i32 %conv240, 96
  %idxprom242 = sext i32 %sub241 to i64
  %arrayidx243 = getelementptr inbounds [27 x [27 x [27 x i32]]], ptr %fre107, i64 0, i64 %idxprom242
  %23 = load i8, ptr %arrayidx212, align 1, !tbaa !13
  %conv247 = sext i8 %23 to i32
  %sub248 = sub nsw i32 %conv247, 96
  %idxprom249 = sext i32 %sub248 to i64
  %arrayidx250 = getelementptr inbounds [27 x [27 x i32]], ptr %arrayidx243, i64 0, i64 %idxprom249
  %24 = load i8, ptr %arrayidx219, align 1, !tbaa !13
  %conv254 = sext i8 %24 to i32
  %sub255 = sub nsw i32 %conv254, 96
  %idxprom256 = sext i32 %sub255 to i64
  %arrayidx257 = getelementptr inbounds [27 x i32], ptr %arrayidx250, i64 0, i64 %idxprom256
  store i32 0, ptr %arrayidx257, align 4, !tbaa !5
  br label %for.inc259

for.inc259:                                       ; preds = %for.body203, %if.then225
  br label %for.cond200, !llvm.loop !26

for.end261:                                       ; preds = %for.cond200
  call void @llvm.lifetime.end.p0(i64 noundef 78732, ptr noundef %fre107) #11
  br label %if.end461

if.else262:                                       ; preds = %if.else104
  br label %for.cond263

for.cond263:                                      ; preds = %for.inc292, %if.else262
  %i.8 = phi i32 [ 1, %if.else262 ], [ %inc293, %for.inc292 ]
  %cmp264 = icmp sle i32 %i.8, 26
  br i1 %cmp264, label %for.body265, label %for.end294

for.body265:                                      ; preds = %for.cond263
  br label %for.cond266

for.cond266:                                      ; preds = %for.inc289, %for.body265
  %j.4 = phi i32 [ 1, %for.body265 ], [ %inc290, %for.inc289 ]
  %cmp267 = icmp sle i32 %j.4, 26
  br i1 %cmp267, label %for.body268, label %for.inc292

for.body268:                                      ; preds = %for.cond266
  br label %for.cond269

for.cond269:                                      ; preds = %for.inc286, %for.body268
  %k.2 = phi i32 [ 1, %for.body268 ], [ %inc287, %for.inc286 ]
  %cmp270 = icmp sle i32 %k.2, 26
  br i1 %cmp270, label %for.body271, label %for.inc289

for.body271:                                      ; preds = %for.cond269
  br label %for.cond272

for.cond272:                                      ; preds = %for.inc283, %for.body271
  %l.0 = phi i32 [ 1, %for.body271 ], [ %inc284, %for.inc283 ]
  %cmp273 = icmp sle i32 %l.0, 26
  br i1 %cmp273, label %for.inc283, label %for.inc286

for.inc283:                                       ; preds = %for.cond272
  %idxprom275 = sext i32 %i.8 to i64
  %arrayidx276 = getelementptr inbounds [27 x [27 x [27 x [27 x i32]]]], ptr @freq, i64 0, i64 %idxprom275
  %idxprom277 = sext i32 %j.4 to i64
  %arrayidx278 = getelementptr inbounds [27 x [27 x [27 x i32]]], ptr %arrayidx276, i64 0, i64 %idxprom277
  %idxprom279 = sext i32 %k.2 to i64
  %arrayidx280 = getelementptr inbounds [27 x [27 x i32]], ptr %arrayidx278, i64 0, i64 %idxprom279
  %idxprom281 = sext i32 %l.0 to i64
  %arrayidx282 = getelementptr inbounds [27 x i32], ptr %arrayidx280, i64 0, i64 %idxprom281
  store i32 0, ptr %arrayidx282, align 4, !tbaa !5
  %inc284 = add nsw i32 %l.0, 1
  br label %for.cond272, !llvm.loop !27

for.inc286:                                       ; preds = %for.cond272
  %inc287 = add nsw i32 %k.2, 1
  br label %for.cond269, !llvm.loop !28

for.inc289:                                       ; preds = %for.cond269
  %inc290 = add nsw i32 %j.4, 1
  br label %for.cond266, !llvm.loop !29

for.inc292:                                       ; preds = %for.cond266
  %inc293 = add nsw i32 %i.8, 1
  br label %for.cond263, !llvm.loop !30

for.end294:                                       ; preds = %for.cond263
  br label %for.cond295

for.cond295:                                      ; preds = %for.inc327, %for.end294
  %i.9 = phi i32 [ 0, %for.end294 ], [ %add305, %for.inc327 ]
  %sub296 = sub nsw i32 %conv, 4
  %cmp297 = icmp sle i32 %i.9, %sub296
  br i1 %cmp297, label %for.inc327, label %for.end329

for.inc327:                                       ; preds = %for.cond295
  %idxprom299 = sext i32 %i.9 to i64
  %arrayidx300 = getelementptr inbounds [505 x i8], ptr %str, i64 0, i64 %idxprom299
  %25 = load i8, ptr %arrayidx300, align 1, !tbaa !13
  %conv301 = sext i8 %25 to i32
  %sub302 = sub nsw i32 %conv301, 96
  %idxprom303 = sext i32 %sub302 to i64
  %arrayidx304 = getelementptr inbounds [27 x [27 x [27 x [27 x i32]]]], ptr @freq, i64 0, i64 %idxprom303
  %add305 = add nsw i32 %i.9, 1
  %idxprom306 = sext i32 %add305 to i64
  %arrayidx307 = getelementptr inbounds [505 x i8], ptr %str, i64 0, i64 %idxprom306
  %26 = load i8, ptr %arrayidx307, align 1, !tbaa !13
  %conv308 = sext i8 %26 to i32
  %sub309 = sub nsw i32 %conv308, 96
  %idxprom310 = sext i32 %sub309 to i64
  %arrayidx311 = getelementptr inbounds [27 x [27 x [27 x i32]]], ptr %arrayidx304, i64 0, i64 %idxprom310
  %add312 = add nsw i32 %i.9, 2
  %idxprom313 = sext i32 %add312 to i64
  %arrayidx314 = getelementptr inbounds [505 x i8], ptr %str, i64 0, i64 %idxprom313
  %27 = load i8, ptr %arrayidx314, align 1, !tbaa !13
  %conv315 = sext i8 %27 to i32
  %sub316 = sub nsw i32 %conv315, 96
  %idxprom317 = sext i32 %sub316 to i64
  %arrayidx318 = getelementptr inbounds [27 x [27 x i32]], ptr %arrayidx311, i64 0, i64 %idxprom317
  %add319 = add nsw i32 %i.9, 3
  %idxprom320 = sext i32 %add319 to i64
  %arrayidx321 = getelementptr inbounds [505 x i8], ptr %str, i64 0, i64 %idxprom320
  %28 = load i8, ptr %arrayidx321, align 1, !tbaa !13
  %conv322 = sext i8 %28 to i32
  %sub323 = sub nsw i32 %conv322, 96
  %idxprom324 = sext i32 %sub323 to i64
  %arrayidx325 = getelementptr inbounds [27 x i32], ptr %arrayidx318, i64 0, i64 %idxprom324
  %29 = load i32, ptr %arrayidx325, align 4, !tbaa !5, !invariant.load !14
  %inc326 = add nsw i32 %29, 1
  store i32 %inc326, ptr %arrayidx325, align 4, !tbaa !5
  br label %for.cond295, !llvm.loop !31

for.end329:                                       ; preds = %for.cond295
  br label %for.cond330

for.cond330:                                      ; preds = %for.inc370, %for.end329
  %i.10 = phi i32 [ 1, %for.end329 ], [ %inc371, %for.inc370 ]
  %max.9 = phi i32 [ 0, %for.end329 ], [ %max.10, %for.inc370 ]
  %cmp331 = icmp sle i32 %i.10, 26
  br i1 %cmp331, label %for.body332, label %for.end372

for.body332:                                      ; preds = %for.cond330
  br label %for.cond333

for.cond333:                                      ; preds = %for.inc367, %for.body332
  %j.5 = phi i32 [ 1, %for.body332 ], [ %inc368, %for.inc367 ]
  %max.10 = phi i32 [ %max.9, %for.body332 ], [ %max.11, %for.inc367 ]
  %cmp334 = icmp sle i32 %j.5, 26
  br i1 %cmp334, label %for.body335, label %for.inc370

for.body335:                                      ; preds = %for.cond333
  br label %for.cond336

for.cond336:                                      ; preds = %for.inc364, %for.body335
  %k.3 = phi i32 [ 1, %for.body335 ], [ %inc365, %for.inc364 ]
  %max.11 = phi i32 [ %max.10, %for.body335 ], [ %max.12, %for.inc364 ]
  %cmp337 = icmp sle i32 %k.3, 26
  br i1 %cmp337, label %for.body338, label %for.inc367

for.body338:                                      ; preds = %for.cond336
  br label %for.cond339

for.cond339:                                      ; preds = %for.inc361, %for.body338
  %max.12 = phi i32 [ %max.11, %for.body338 ], [ %max.13, %for.inc361 ]
  %l.1 = phi i32 [ 1, %for.body338 ], [ %inc362, %for.inc361 ]
  %cmp340 = icmp sle i32 %l.1, 26
  br i1 %cmp340, label %for.body341, label %for.inc364

for.body341:                                      ; preds = %for.cond339
  %idxprom342 = sext i32 %i.10 to i64
  %arrayidx343 = getelementptr inbounds [27 x [27 x [27 x [27 x i32]]]], ptr @freq, i64 0, i64 %idxprom342
  %idxprom344 = sext i32 %j.5 to i64
  %arrayidx345 = getelementptr inbounds [27 x [27 x [27 x i32]]], ptr %arrayidx343, i64 0, i64 %idxprom344
  %idxprom346 = sext i32 %k.3 to i64
  %arrayidx347 = getelementptr inbounds [27 x [27 x i32]], ptr %arrayidx345, i64 0, i64 %idxprom346
  %idxprom348 = sext i32 %l.1 to i64
  %arrayidx349 = getelementptr inbounds [27 x i32], ptr %arrayidx347, i64 0, i64 %idxprom348
  %30 = load i32, ptr %arrayidx349, align 4, !tbaa !5
  %cmp350 = icmp sge i32 %30, %max.12
  br i1 %cmp350, label %if.then351, label %for.inc361

if.then351:                                       ; preds = %for.body341
  br label %for.inc361

for.inc361:                                       ; preds = %for.body341, %if.then351
  %max.13 = phi i32 [ %30, %if.then351 ], [ %max.12, %for.body341 ]
  %inc362 = add nsw i32 %l.1, 1
  br label %for.cond339, !llvm.loop !32

for.inc364:                                       ; preds = %for.cond339
  %inc365 = add nsw i32 %k.3, 1
  br label %for.cond336, !llvm.loop !33

for.inc367:                                       ; preds = %for.cond336
  %inc368 = add nsw i32 %j.5, 1
  br label %for.cond333, !llvm.loop !34

for.inc370:                                       ; preds = %for.cond333
  %inc371 = add nsw i32 %i.10, 1
  br label %for.cond330, !llvm.loop !35

for.end372:                                       ; preds = %for.cond330
  %cmp373 = icmp eq i32 %max.9, 1
  br i1 %cmp373, label %if.then374, label %if.else376

if.then374:                                       ; preds = %for.end372
  %call375 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str)
  br label %if.end379

if.else376:                                       ; preds = %for.end372
  %call377 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %max.9)
  %call378 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call377, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %if.end379

if.end379:                                        ; preds = %if.else376, %if.then374
  %max.14 = phi i32 [ -1, %if.then374 ], [ %max.9, %if.else376 ]
  br label %for.cond380

for.cond380:                                      ; preds = %for.inc457, %if.end379
  %i.11 = phi i32 [ 0, %if.end379 ], [ %add390, %for.inc457 ]
  %sub381 = sub nsw i32 %conv, 2
  %cmp382 = icmp sle i32 %i.11, %sub381
  br i1 %cmp382, label %for.body383, label %if.end461

for.body383:                                      ; preds = %for.cond380
  %idxprom384 = sext i32 %i.11 to i64
  %arrayidx385 = getelementptr inbounds [505 x i8], ptr %str, i64 0, i64 %idxprom384
  %31 = load i8, ptr %arrayidx385, align 1, !tbaa !13
  %conv386 = sext i8 %31 to i32
  %sub387 = sub nsw i32 %conv386, 96
  %idxprom388 = sext i32 %sub387 to i64
  %arrayidx389 = getelementptr inbounds [27 x [27 x [27 x [27 x i32]]]], ptr @freq, i64 0, i64 %idxprom388
  %add390 = add nsw i32 %i.11, 1
  %idxprom391 = sext i32 %add390 to i64
  %arrayidx392 = getelementptr inbounds [505 x i8], ptr %str, i64 0, i64 %idxprom391
  %32 = load i8, ptr %arrayidx392, align 1, !tbaa !13
  %conv393 = sext i8 %32 to i32
  %sub394 = sub nsw i32 %conv393, 96
  %idxprom395 = sext i32 %sub394 to i64
  %arrayidx396 = getelementptr inbounds [27 x [27 x [27 x i32]]], ptr %arrayidx389, i64 0, i64 %idxprom395
  %add397 = add nsw i32 %i.11, 2
  %idxprom398 = sext i32 %add397 to i64
  %arrayidx399 = getelementptr inbounds [505 x i8], ptr %str, i64 0, i64 %idxprom398
  %33 = load i8, ptr %arrayidx399, align 1, !tbaa !13
  %conv400 = sext i8 %33 to i32
  %sub401 = sub nsw i32 %conv400, 96
  %idxprom402 = sext i32 %sub401 to i64
  %arrayidx403 = getelementptr inbounds [27 x [27 x i32]], ptr %arrayidx396, i64 0, i64 %idxprom402
  %add404 = add nsw i32 %i.11, 3
  %idxprom405 = sext i32 %add404 to i64
  %arrayidx406 = getelementptr inbounds [505 x i8], ptr %str, i64 0, i64 %idxprom405
  %34 = load i8, ptr %arrayidx406, align 1, !tbaa !13
  %conv407 = sext i8 %34 to i32
  %sub408 = sub nsw i32 %conv407, 96
  %idxprom409 = sext i32 %sub408 to i64
  %arrayidx410 = getelementptr inbounds [27 x i32], ptr %arrayidx403, i64 0, i64 %idxprom409
  %35 = load i32, ptr %arrayidx410, align 4, !tbaa !5, !invariant.load !14
  %cmp411 = icmp eq i32 %35, %max.14
  br i1 %cmp411, label %if.then412, label %for.inc457

if.then412:                                       ; preds = %for.body383
  %call415 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %31)
  %36 = load i8, ptr %arrayidx392, align 1, !tbaa !13
  %call419 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %call415, i8 noundef signext %36)
  %37 = load i8, ptr %arrayidx399, align 1, !tbaa !13
  %call423 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %call419, i8 noundef signext %37)
  %38 = load i8, ptr %arrayidx406, align 1, !tbaa !13
  %call427 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %call423, i8 noundef signext %38)
  %call428 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call427, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %39 = load i8, ptr %arrayidx385, align 1, !tbaa !13
  %conv431 = sext i8 %39 to i32
  %sub432 = sub nsw i32 %conv431, 96
  %idxprom433 = sext i32 %sub432 to i64
  %arrayidx434 = getelementptr inbounds [27 x [27 x [27 x [27 x i32]]]], ptr @freq, i64 0, i64 %idxprom433
  %40 = load i8, ptr %arrayidx392, align 1, !tbaa !13
  %conv438 = sext i8 %40 to i32
  %sub439 = sub nsw i32 %conv438, 96
  %idxprom440 = sext i32 %sub439 to i64
  %arrayidx441 = getelementptr inbounds [27 x [27 x [27 x i32]]], ptr %arrayidx434, i64 0, i64 %idxprom440
  %41 = load i8, ptr %arrayidx399, align 1, !tbaa !13
  %conv445 = sext i8 %41 to i32
  %sub446 = sub nsw i32 %conv445, 96
  %idxprom447 = sext i32 %sub446 to i64
  %arrayidx448 = getelementptr inbounds [27 x [27 x i32]], ptr %arrayidx441, i64 0, i64 %idxprom447
  %42 = load i8, ptr %arrayidx406, align 1, !tbaa !13
  %conv452 = sext i8 %42 to i32
  %sub453 = sub nsw i32 %conv452, 96
  %idxprom454 = sext i32 %sub453 to i64
  %arrayidx455 = getelementptr inbounds [27 x i32], ptr %arrayidx448, i64 0, i64 %idxprom454
  store i32 0, ptr %arrayidx455, align 4, !tbaa !5
  br label %for.inc457

for.inc457:                                       ; preds = %for.body383, %if.then412
  br label %for.cond380, !llvm.loop !36

if.end461:                                        ; preds = %for.end261, %for.cond380, %for.end103
  call void @llvm.lifetime.end.p0(i64 noundef 505, ptr noundef %str) #11
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #11
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_(ptr noundef nonnull align 8 dereferenceable(16) %__in, ptr noundef nonnull %__s) local_unnamed_addr #2 comdat {
entry:
  %__c = alloca i32, align 4
  %ref.tmp = alloca i32, align 4
  %0 = call i64 @llvm.objectsize.i64.p0(ptr %__s, i1 false, i1 true, i1 false)
  %cmp = icmp ult i64 %0, 1
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  %vtable = load ptr, ptr %__in, align 8, !tbaa !37
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8, !invariant.load !14
  %add.ptr = getelementptr inbounds i8, ptr %__in, i64 %vbase.offset
  %call = call noundef i64 @_ZNSt8ios_base5widthEl(ptr noundef nonnull align 8 dereferenceable(216) %add.ptr, i64 noundef 0) #11
  %vtable1 = load ptr, ptr %__in, align 8, !tbaa !37
  %vbase.offset.ptr2 = getelementptr i8, ptr %vtable1, i64 -24
  %vbase.offset3 = load i64, ptr %vbase.offset.ptr2, align 8, !invariant.load !14
  %add.ptr4 = getelementptr inbounds i8, ptr %__in, i64 %vbase.offset3
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr4, i32 noundef 4)
  br label %if.end38

if.else:                                          ; preds = %entry
  %cmp5 = icmp ne i64 %0, -1
  br i1 %cmp5, label %if.then6, label %if.else34

if.then6:                                         ; preds = %if.else
  %vtable7 = load ptr, ptr %__in, align 8, !tbaa !37
  %vbase.offset.ptr8 = getelementptr i8, ptr %vtable7, i64 -24
  %vbase.offset9 = load i64, ptr %vbase.offset.ptr8, align 8, !invariant.load !14
  %add.ptr10 = getelementptr inbounds i8, ptr %__in, i64 %vbase.offset9
  %call11 = call noundef i64 @_ZNKSt8ios_base5widthEv(ptr noundef nonnull align 8 dereferenceable(216) %add.ptr10) #11
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) %__in, ptr noundef %__s, i64 noundef %0)
  %vtable12 = load ptr, ptr %__in, align 8, !tbaa !37
  %vbase.offset.ptr13 = getelementptr i8, ptr %vtable12, i64 -24
  %vbase.offset14 = load i64, ptr %vbase.offset.ptr13, align 8, !invariant.load !14
  %add.ptr15 = getelementptr inbounds i8, ptr %__in, i64 %vbase.offset14
  %call16 = call noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr15) #11
  br i1 %call16, label %land.lhs.true, label %if.end38

land.lhs.true:                                    ; preds = %if.then6
  %cmp17 = icmp sle i64 %call11, 0
  br i1 %cmp17, label %if.then19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %cmp18 = icmp ult i64 %0, %call11
  br i1 %cmp18, label %if.then19, label %if.end38

if.then19:                                        ; preds = %lor.lhs.false, %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull align 4 captures(none) dereferenceable(4) %__c) #11
  %vtable20 = load ptr, ptr %__in, align 8, !tbaa !37
  %vbase.offset.ptr21 = getelementptr i8, ptr %vtable20, i64 -24
  %vbase.offset22 = load i64, ptr %vbase.offset.ptr21, align 8, !invariant.load !14
  %add.ptr23 = getelementptr inbounds i8, ptr %__in, i64 %vbase.offset22
  %call24 = call noundef ptr @_ZNKSt9basic_iosIcSt11char_traitsIcEE5rdbufEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr23) #11
  %call25 = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %call24)
  store i32 %call25, ptr %__c, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull align 4 captures(none) dereferenceable(4) %ref.tmp) #11
  %call26 = call noundef i32 @_ZNSt11char_traitsIcE3eofEv() #11
  store i32 %call26, ptr %ref.tmp, align 4, !tbaa !5
  %call27 = call noundef zeroext i1 @_ZNSt11char_traitsIcE11eq_int_typeERKiS2_(ptr noundef nonnull align 4 dereferenceable(4) %__c, ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %ref.tmp) #11
  %conv = zext i1 %call27 to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then28, label %if.end

if.then28:                                        ; preds = %if.then19
  %vtable29 = load ptr, ptr %__in, align 8, !tbaa !37
  %vbase.offset.ptr30 = getelementptr i8, ptr %vtable29, i64 -24
  %vbase.offset31 = load i64, ptr %vbase.offset.ptr30, align 8, !invariant.load !14
  %add.ptr32 = getelementptr inbounds i8, ptr %__in, i64 %vbase.offset31
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32, i32 noundef 2)
  br label %if.end

if.end:                                           ; preds = %if.then28, %if.then19
  call void @llvm.lifetime.end.p0(i64 4, ptr %__c) #11
  br label %if.end38

if.else34:                                        ; preds = %if.else
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) %__in, ptr noundef %__s, i64 noundef 9223372036854775807)
  br label %if.end38

if.end38:                                         ; preds = %if.else34, %if.end, %lor.lhs.false, %if.then6, %do.end
  ret ptr %__in
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #5 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt8ios_base5widthEl(ptr noundef nonnull align 8 dereferenceable(216) %this, i64 noundef %__wide) local_unnamed_addr #7 comdat align 2 {
entry:
  %_M_width = getelementptr inbounds nuw %"class.std::ios_base", ptr %this, i32 0, i32 2
  %0 = load i64, ptr %_M_width, align 8, !tbaa !39
  store i64 %__wide, ptr %_M_width, align 8, !tbaa !39
  ret i64 %0
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt8ios_base5widthEv(ptr noundef nonnull align 8 dereferenceable(216) %this) local_unnamed_addr #7 comdat align 2 {
entry:
  %_M_width = getelementptr inbounds nuw %"class.std::ios_base", ptr %this, i32 0, i32 2
  %0 = load i64, ptr %_M_width, align 8, !tbaa !39
  ret i64 %0
}

declare void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv(ptr noundef nonnull align 8 dereferenceable(264)) local_unnamed_addr #7 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef ptr @_ZNKSt9basic_iosIcSt11char_traitsIcEE5rdbufEv(ptr noundef nonnull align 8 dereferenceable(264)) local_unnamed_addr #7 align 2

; Function Attrs: mustprogress uwtable
declare noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt11char_traitsIcE11eq_int_typeERKiS2_(ptr noundef nonnull align 4 dereferenceable(4) %__c1, ptr noundef nonnull align 4 dereferenceable(4) %__c2) local_unnamed_addr #7 comdat align 2 {
entry:
  %0 = load i32, ptr %__c1, align 4, !tbaa !5
  %1 = load i32, ptr %__c2, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, %1
  ret i1 %cmp
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNSt11char_traitsIcE3eofEv() local_unnamed_addr #7 comdat align 2 {
entry:
  ret i32 -1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { nofree nounwind willreturn }
attributes #10 = { nounwind willreturn memory(read) }
attributes #11 = { nounwind }

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
!13 = !{!7, !7, i64 0}
!14 = !{}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11}
!23 = distinct !{!23, !10, !11}
!24 = distinct !{!24, !10, !11}
!25 = distinct !{!25, !10, !11}
!26 = distinct !{!26, !10, !11}
!27 = distinct !{!27, !10, !11}
!28 = distinct !{!28, !10, !11}
!29 = distinct !{!29, !10, !11}
!30 = distinct !{!30, !10, !11}
!31 = distinct !{!31, !10, !11}
!32 = distinct !{!32, !10, !11}
!33 = distinct !{!33, !10, !11}
!34 = distinct !{!34, !10, !11}
!35 = distinct !{!35, !10, !11}
!36 = distinct !{!36, !10, !11}
!37 = !{!38, !38, i64 0}
!38 = !{!"vtable pointer", !8, i64 0}
!39 = !{!40, !41, i64 16}
!40 = !{!"_ZTSSt8ios_base", !41, i64 8, !41, i64 16, !42, i64 24, !43, i64 28, !43, i64 32, !44, i64 40, !46, i64 48, !7, i64 64, !6, i64 192, !47, i64 200, !48, i64 208}
!41 = !{!"long", !7, i64 0}
!42 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!43 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!44 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !45, i64 0}
!45 = !{!"any pointer", !7, i64 0}
!46 = !{!"_ZTSNSt8ios_base6_WordsE", !45, i64 0, !41, i64 8}
!47 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !45, i64 0}
!48 = !{!"_ZTSSt6locale", !49, i64 0}
!49 = !{!"p1 _ZTSNSt6locale5_ImplE", !45, i64 0}
